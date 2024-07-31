.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;
.super Ljava/lang/Object;
.source "ProjectListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\u0002\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;",
        "",
        "()V",
        "PERMISSIONS_REQUEST_IMPORT_FROM_EXTERNAL_STORAGE",
        "",
        "REQUEST_IMPORT_PROJECT",
        "TAG",
        "",
        "getTAG$annotations",
        "getTAG",
        "()Ljava/lang/String;",
        "getLocalProjectList",
        "",
        "items",
        "",
        "Lorg/catrobat/catroid/common/ProjectData;",
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

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 559
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getTAG$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getLocalProjectList(Ljava/util/List;)V
    .locals 10
    .param p1, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    sget-object v0, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 568
    .local v3, "projectDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "code.xml"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 569
    .local v4, "xmlFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 570
    goto :goto_1

    .line 572
    :cond_0
    new-instance v5, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;

    invoke-direct {v5, v4}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;-><init>(Ljava/io/File;)V

    .line 573
    .local v5, "metaDataParser":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;
    nop

    .line 574
    :try_start_0
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->getProjectMetaData()Lorg/catrobat/catroid/common/ProjectData;

    move-result-object v6

    const-string v7, "metaDataParser.projectMetaData"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 575
    :catch_0
    move-exception v6

    .line 576
    .local v6, "exception":Ljava/io/IOException;
    move-object v7, p0

    check-cast v7, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;

    invoke-virtual {v7}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v7

    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    const-string v9, "Could no parse local project."

    invoke-static {v7, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .end local v4    # "xmlFile":Ljava/io/File;
    .end local v5    # "metaDataParser":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;
    .end local v6    # "exception":Ljava/io/IOException;
    :goto_1
    nop

    .line 567
    nop

    .end local v3    # "projectDir":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    :cond_1
    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 561
    invoke-static {}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
