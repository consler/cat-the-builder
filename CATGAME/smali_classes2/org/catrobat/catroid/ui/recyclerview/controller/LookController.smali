.class public final Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;
.super Ljava/lang/Object;
.source "LookController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLookController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LookController.kt\norg/catrobat/catroid/ui/recyclerview/controller/LookController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1#2:130\n256#3,2:131\n256#3,2:133\n256#3,2:135\n*E\n*S KotlinDebug\n*F\n+ 1 LookController.kt\norg/catrobat/catroid/ui/recyclerview/controller/LookController\n*L\n51#1,2:131\n81#1,2:133\n105#1,2:135\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006J$\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010\u0013\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ$\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ$\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0016\u0010\u0019\u001a\u00020\u001a*\u00020\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;",
        "",
        "()V",
        "uniqueNameProvider",
        "Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;",
        "copy",
        "Lorg/catrobat/catroid/common/LookData;",
        "lookToCopy",
        "dstScene",
        "Lorg/catrobat/catroid/content/Scene;",
        "dstSprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "delete",
        "",
        "lookToDelete",
        "findOrCopy",
        "getImageDir",
        "Ljava/io/File;",
        "scene",
        "pack",
        "lookToPack",
        "packForSprite",
        "unpack",
        "lookToUnpack",
        "unpackForSprite",
        "checksumEquals",
        "",
        "file",
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

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    return-void
.end method

.method private final checksumEquals(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .param p1, "$this$checksumEquals"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    .line 121
    if-nez p2, :cond_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->md5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "checksum1":Ljava/lang/String;
    invoke-static {p2}, Lorg/catrobat/catroid/utils/Utils;->md5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "checksum2":Ljava/lang/String;
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private final getImageDir(Lorg/catrobat/catroid/content/Scene;)Ljava/io/File;
    .locals 3
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 114
    new-instance v0, Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final copy(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;
    .locals 4
    .param p1, "lookToCopy"    # Lorg/catrobat/catroid/common/LookData;
    .param p2, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    nop

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 41
    nop

    .line 43
    .local v0, "name":Ljava/lang/String;
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 130
    .local v2, "it":Lorg/catrobat/catroid/content/Scene;
    const/4 v3, 0x0

    .line 43
    .local v3, "$i$a$-let-LookController$copy$dstDir$1":I
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->getImageDir(Lorg/catrobat/catroid/content/Scene;)Ljava/io/File;

    move-result-object v2

    .end local v2    # "it":Lorg/catrobat/catroid/content/Scene;
    .end local v3    # "$i$a$-let-LookController$copy$dstDir$1":I
    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 44
    .local v2, "dstDir":Ljava/io/File;
    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v1

    :cond_3
    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 45
    .local v1, "file":Ljava/io/File;
    new-instance v3, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v3, v0, v1}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v3
.end method

.method public final delete(Lorg/catrobat/catroid/common/LookData;)V
    .locals 2
    .param p1, "lookToDelete"    # Lorg/catrobat/catroid/common/LookData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->deleteFile(Ljava/io/File;)V

    .line 64
    :cond_0
    return-void
.end method

.method public final findOrCopy(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;
    .locals 9
    .param p1, "lookToCopy"    # Lorg/catrobat/catroid/common/LookData;
    .param p2, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    nop

    .line 51
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/common/LookData;

    .local v5, "it":Lorg/catrobat/catroid/common/LookData;
    const/4 v6, 0x0

    .line 51
    .local v6, "$i$a$-firstOrNull-LookController$findOrCopy$existingCopy$1":I
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "it.file"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    :goto_0
    invoke-direct {p0, v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->checksumEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    .end local v5    # "it":Lorg/catrobat/catroid/common/LookData;
    .end local v6    # "$i$a$-firstOrNull-LookController$findOrCopy$existingCopy$1":I
    if-eqz v5, :cond_0

    move-object v0, v4

    goto :goto_1

    .line 132
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v0, Lorg/catrobat/catroid/common/LookData;

    goto :goto_2

    :cond_3
    nop

    .line 50
    :goto_2
    nop

    .line 52
    .local v0, "existingCopy":Lorg/catrobat/catroid/common/LookData;
    if-eqz v0, :cond_4

    return-object v0

    .line 54
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->copy(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    .line 55
    .local v1, "copiedLook":Lorg/catrobat/catroid/common/LookData;
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_5
    return-object v1
.end method

.method public final pack(Lorg/catrobat/catroid/common/LookData;)Lorg/catrobat/catroid/common/LookData;
    .locals 5
    .param p1, "lookToPack"    # Lorg/catrobat/catroid/common/LookData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    .line 69
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v3

    const-string v4, "BackpackListManager.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedLooks()Ljava/util/List;

    move-result-object v3

    .line 68
    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "name":Ljava/lang/String;
    nop

    .line 72
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v1

    .line 73
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackImageDirectory:Ljava/io/File;

    .line 71
    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 75
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v2, v0, v1}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v2
.end method

.method public final packForSprite(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;
    .locals 9
    .param p1, "lookToPack"    # Lorg/catrobat/catroid/common/LookData;
    .param p2, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    nop

    .line 81
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 133
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/common/LookData;

    .local v5, "it":Lorg/catrobat/catroid/common/LookData;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$a$-firstOrNull-LookController$packForSprite$existingCopy$1":I
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "it.file"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    :goto_0
    invoke-direct {p0, v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->checksumEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    .end local v5    # "it":Lorg/catrobat/catroid/common/LookData;
    .end local v6    # "$i$a$-firstOrNull-LookController$packForSprite$existingCopy$1":I
    if-eqz v5, :cond_0

    goto :goto_1

    .line 134
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    move-object v4, v0

    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v4, Lorg/catrobat/catroid/common/LookData;

    goto :goto_2

    :cond_3
    move-object v4, v0

    .line 80
    :goto_2
    move-object v1, v4

    .line 82
    .local v1, "existingCopy":Lorg/catrobat/catroid/common/LookData;
    if-eqz v1, :cond_4

    return-object v1

    .line 84
    :cond_4
    nop

    .line 85
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v0

    .line 86
    :goto_3
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v3

    iget-object v3, v3, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackImageDirectory:Ljava/io/File;

    .line 84
    invoke-static {v2, v3}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 88
    .local v2, "file":Ljava/io/File;
    new-instance v3, Lorg/catrobat/catroid/common/LookData;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-direct {v3, v0, v2}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    move-object v0, v3

    .line 89
    .local v0, "look":Lorg/catrobat/catroid/common/LookData;
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_7
    return-object v0
.end method

.method public final unpack(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;
    .locals 4
    .param p1, "lookToUnpack"    # Lorg/catrobat/catroid/common/LookData;
    .param p2, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    nop

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 95
    nop

    .line 97
    .local v0, "name":Ljava/lang/String;
    nop

    .line 98
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz p2, :cond_3

    .line 130
    move-object v1, p2

    .local v1, "it":Lorg/catrobat/catroid/content/Scene;
    const/4 v3, 0x0

    .line 98
    .local v3, "$i$a$-let-LookController$unpack$file$1":I
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->getImageDir(Lorg/catrobat/catroid/content/Scene;)Ljava/io/File;

    move-result-object v1

    .end local v1    # "it":Lorg/catrobat/catroid/content/Scene;
    .end local v3    # "$i$a$-let-LookController$unpack$file$1":I
    :cond_3
    invoke-static {v2, v1}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 97
    nop

    .line 99
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v2, v0, v1}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v2
.end method

.method public final unpackForSprite(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;
    .locals 9
    .param p1, "lookToUnpack"    # Lorg/catrobat/catroid/common/LookData;
    .param p2, "dstScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "dstSprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    nop

    .line 105
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 135
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/common/LookData;

    .local v5, "it":Lorg/catrobat/catroid/common/LookData;
    const/4 v6, 0x0

    .line 105
    .local v6, "$i$a$-firstOrNull-LookController$unpackForSprite$existingCopy$1":I
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "it.file"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    :goto_0
    invoke-direct {p0, v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->checksumEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    .end local v5    # "it":Lorg/catrobat/catroid/common/LookData;
    .end local v6    # "$i$a$-firstOrNull-LookController$unpackForSprite$existingCopy$1":I
    if-eqz v5, :cond_0

    move-object v0, v4

    goto :goto_1

    .line 136
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v0, Lorg/catrobat/catroid/common/LookData;

    goto :goto_2

    :cond_3
    nop

    .line 104
    :goto_2
    nop

    .line 106
    .local v0, "existingCopy":Lorg/catrobat/catroid/common/LookData;
    if-eqz v0, :cond_4

    return-object v0

    .line 108
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/controller/LookController;->unpack(Lorg/catrobat/catroid/common/LookData;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/common/LookData;

    move-result-object v1

    .line 109
    .local v1, "lookData":Lorg/catrobat/catroid/common/LookData;
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_5
    return-object v1
.end method
