.class public final Lorg/catrobat/catroid/transfers/project/ProjectUpload;
.super Ljava/lang/Object;
.source "ProjectUpload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/transfers/project/ProjectUpload$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectUpload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectUpload.kt\norg/catrobat/catroid/transfers/project/ProjectUpload\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,138:1\n11616#2,9:139\n13506#2:148\n13507#2:150\n11625#2:151\n3755#2:157\n4270#2,2:158\n1#3:149\n734#4:152\n825#4,2:153\n1819#4,2:155\n37#5,2:160\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectUpload.kt\norg/catrobat/catroid/transfers/project/ProjectUpload\n*L\n107#1,9:139\n107#1:148\n107#1:150\n107#1:151\n121#1:157\n121#1,2:158\n107#1:149\n108#1:152\n108#1,2:153\n109#1,2:155\n123#1,2:160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 )2\u00020\u0001:\u0001)B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0003H\u0002J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\tH\u0002\u00a2\u0006\u0002\u0010\u001aJi\u0010\u001b\u001a\u00020\u00192%\u0010\u001c\u001a!\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00190\u001dj\u0002`!2:\u0010\"\u001a6\u0012\u0013\u0012\u00110$\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(%\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u00190#j\u0002`\'J\u001a\u0010(\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0002R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lorg/catrobat/catroid/transfers/project/ProjectUpload;",
        "",
        "projectDirectory",
        "Ljava/io/File;",
        "projectName",
        "",
        "projectDescription",
        "userEmail",
        "sceneNames",
        "",
        "archiveDirectory",
        "zipArchiver",
        "Lorg/catrobat/catroid/io/ZipArchiver;",
        "screenshotLoader",
        "Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "serverCalls",
        "Lorg/catrobat/catroid/web/ServerCalls;",
        "(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Lorg/catrobat/catroid/io/ZipArchiver;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Landroid/content/SharedPreferences;Lorg/catrobat/catroid/web/ServerCalls;)V",
        "[Ljava/lang/String;",
        "createUploadData",
        "Lorg/catrobat/catroid/transfers/project/ProjectUploadData;",
        "projectArchive",
        "scaleSceneScreenshots",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)V",
        "start",
        "successCallback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "projectId",
        "Lorg/catrobat/catroid/transfers/project/UploadProjectSuccessCallback;",
        "errorCallback",
        "Lkotlin/Function2;",
        "",
        "errorCode",
        "errorMessage",
        "Lorg/catrobat/catroid/transfers/project/UploadProjectErrorCallback;",
        "zipProjectToArchive",
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
.field public static final Companion:Lorg/catrobat/catroid/transfers/project/ProjectUpload$Companion;

.field private static final TAG:Ljava/lang/String;

.field public static final UPLOAD_ZIP_ERROR:I = 0x7dca

.field public static final UPLOAD_ZIP_ERROR_MESSAGE:Ljava/lang/String; = "Failed to zip directory for upload"


# instance fields
.field private final archiveDirectory:Ljava/io/File;

.field private final projectDescription:Ljava/lang/String;

.field private final projectDirectory:Ljava/io/File;

.field private final projectName:Ljava/lang/String;

.field private final sceneNames:[Ljava/lang/String;

.field private final screenshotLoader:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

.field private final serverCalls:Lorg/catrobat/catroid/web/ServerCalls;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final userEmail:Ljava/lang/String;

.field private final zipArchiver:Lorg/catrobat/catroid/io/ZipArchiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/transfers/project/ProjectUpload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectUpload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->Companion:Lorg/catrobat/catroid/transfers/project/ProjectUpload$Companion;

    .line 133
    const-class v0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Lorg/catrobat/catroid/io/ZipArchiver;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Landroid/content/SharedPreferences;Lorg/catrobat/catroid/web/ServerCalls;)V
    .locals 1
    .param p1, "projectDirectory"    # Ljava/io/File;
    .param p2, "projectName"    # Ljava/lang/String;
    .param p3, "projectDescription"    # Ljava/lang/String;
    .param p4, "userEmail"    # Ljava/lang/String;
    .param p5, "sceneNames"    # [Ljava/lang/String;
    .param p6, "archiveDirectory"    # Ljava/io/File;
    .param p7, "zipArchiver"    # Lorg/catrobat/catroid/io/ZipArchiver;
    .param p8, "screenshotLoader"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    .param p9, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p10, "serverCalls"    # Lorg/catrobat/catroid/web/ServerCalls;

    const-string v0, "projectDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectDescription"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userEmail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archiveDirectory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipArchiver"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshotLoader"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverCalls"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->projectDirectory:Ljava/io/File;

    iput-object p2, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->projectName:Ljava/lang/String;

    iput-object p3, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->projectDescription:Ljava/lang/String;

    iput-object p4, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->userEmail:Ljava/lang/String;

    iput-object p5, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->sceneNames:[Ljava/lang/String;

    iput-object p6, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->archiveDirectory:Ljava/io/File;

    iput-object p7, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->zipArchiver:Lorg/catrobat/catroid/io/ZipArchiver;

    iput-object p8, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->screenshotLoader:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    iput-object p9, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p10, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->serverCalls:Lorg/catrobat/catroid/web/ServerCalls;

    return-void
.end method

.method public static final synthetic access$getSharedPreferences$p(Lorg/catrobat/catroid/transfers/project/ProjectUpload;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/transfers/project/ProjectUpload;

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final createUploadData(Ljava/io/File;)Lorg/catrobat/catroid/transfers/project/ProjectUploadData;
    .locals 13
    .param p1, "projectArchive"    # Ljava/io/File;

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "token"

    const-string v2, "no_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "username"

    const-string v4, "no_username"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "username":Ljava/lang/String;
    new-instance v3, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;

    .line 96
    iget-object v6, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->projectName:Ljava/lang/String;

    .line 97
    iget-object v7, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->projectDescription:Ljava/lang/String;

    .line 98
    nop

    .line 99
    iget-object v9, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->userEmail:Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v8, "Locale.getDefault()"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v5, "Locale.getDefault().language"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    if-eqz v0, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v2

    .line 102
    :goto_0
    if-eqz v1, :cond_1

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object v12, v4

    .line 95
    :goto_1
    move-object v5, v3

    move-object v8, p1

    invoke-direct/range {v5 .. v12}, Lorg/catrobat/catroid/transfers/project/ProjectUploadData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private final scaleSceneScreenshots(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "sceneNames"    # [Ljava/lang/String;

    .line 107
    nop

    .line 108
    nop

    .line 109
    if-eqz p2, :cond_6

    .line 107
    move-object/from16 v0, p2

    .local v0, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 139
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 147
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 148
    .local v6, "$i$f$forEach":I
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_1

    aget-object v10, v5, v9

    .local v10, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "element$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 147
    .local v12, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v13, v11

    .local v13, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 107
    .local v14, "$i$a$-mapNotNull-ProjectUpload$scaleSceneScreenshots$1":I
    move-object/from16 v15, p0

    move-object/from16 v16, v0

    .end local v0    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .local v16, "$this$mapNotNull$iv":[Ljava/lang/Object;
    iget-object v0, v15, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->screenshotLoader:Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    move/from16 v17, v1

    move-object/from16 v1, p1

    .end local v1    # "$i$f$mapNotNull":I
    .local v17, "$i$f$mapNotNull":I
    invoke-virtual {v0, v1, v13, v8}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->getScreenshotFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .end local v13    # "it":Ljava/lang/String;
    .end local v14    # "$i$a$-mapNotNull-ProjectUpload$scaleSceneScreenshots$1":I
    if-eqz v0, :cond_0

    .line 149
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 147
    .local v13, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_1

    :cond_0
    nop

    .end local v10    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    goto :goto_0

    .line 150
    .end local v16    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v17    # "$i$f$mapNotNull":I
    .local v0, "$this$mapNotNull$iv":[Ljava/lang/Object;
    .restart local v1    # "$i$f$mapNotNull":I
    :cond_1
    move-object/from16 v15, p0

    move-object/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v1, p1

    .line 151
    .end local v0    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$mapNotNull":I
    .end local v5    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .restart local v16    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .restart local v17    # "$i$f$mapNotNull":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapNotNullTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 139
    nop

    .end local v16    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v17    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 108
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 152
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 153
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v7

    check-cast v9, Ljava/io/File;

    .local v9, "it":Ljava/io/File;
    const/4 v10, 0x0

    .line 108
    .local v10, "$i$a$-filter-ProjectUpload$scaleSceneScreenshots$2":I
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    move v11, v8

    .end local v9    # "it":Ljava/io/File;
    .end local v10    # "$i$a$-filter-ProjectUpload$scaleSceneScreenshots$2":I
    :goto_3
    if-eqz v11, :cond_2

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 152
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 109
    move-object v2, v3

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 155
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/io/File;

    .local v6, "it":Ljava/io/File;
    const/4 v7, 0x0

    .line 110
    .local v7, "$i$a$-forEach-ProjectUpload$scaleSceneScreenshots$3":I
    nop

    .line 111
    const/16 v0, 0x1e0

    :try_start_0
    invoke-static {v6, v0, v0}, Lorg/catrobat/catroid/utils/ImageEditing;->scaleImageFile(Ljava/io/File;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 112
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 113
    .local v0, "ex":Ljava/io/FileNotFoundException;
    sget-object v8, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->TAG:Ljava/lang/String;

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :goto_5
    nop

    .line 115
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Ljava/io/File;
    .end local v7    # "$i$a$-forEach-ProjectUpload$scaleSceneScreenshots$3":I
    goto :goto_4

    .line 156
    :cond_5
    nop

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    goto :goto_6

    :cond_6
    move-object/from16 v15, p0

    move-object/from16 v1, p1

    .line 116
    :goto_6
    return-void
.end method

.method private final zipProjectToArchive(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 14
    .param p1, "projectDirectory"    # Ljava/io/File;
    .param p2, "archiveDirectory"    # Ljava/io/File;

    .line 119
    nop

    .line 120
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 121
    .local v0, "fileList":[Ljava/io/File;
    const-string v1, "fileList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 158
    .local v5, "$i$f$filterTo":I
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v4, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 121
    .local v11, "$i$a$-filter-ProjectUpload$zipProjectToArchive$filteredFileList$1":I
    const-string v12, "file"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DeviceVariables.json"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v10, v12, 0x1

    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "$i$a$-filter-ProjectUpload$zipProjectToArchive$filteredFileList$1":I
    if-eqz v10, :cond_0

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 159
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    nop

    .line 121
    .end local v1    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$filter":I
    move-object v1, v3

    .line 123
    .local v1, "filteredFileList":Ljava/util/List;
    move-object v2, p0

    :try_start_1
    iget-object v3, v2, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->zipArchiver:Lorg/catrobat/catroid/io/ZipArchiver;

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$f$toTypedArray":I
    move-object v6, v4

    .line 161
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v7, v7, [Ljava/io/File;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v7, [Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    move-object/from16 v8, p2

    :try_start_2
    invoke-virtual {v3, v8, v7}, Lorg/catrobat/catroid/io/ZipArchiver;->zip(Ljava/io/File;[Ljava/io/File;)V

    .line 124
    move-object v1, v8

    .end local v0    # "fileList":[Ljava/io/File;
    .end local v1    # "filteredFileList":Ljava/util/List;
    goto :goto_3

    .line 161
    .restart local v0    # "fileList":[Ljava/io/File;
    .restart local v1    # "filteredFileList":Ljava/util/List;
    .restart local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v5    # "$i$f$toTypedArray":I
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    move-object/from16 v8, p2

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v3, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "projectDirectory":Ljava/io/File;
    .end local p2    # "archiveDirectory":Ljava/io/File;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .end local v0    # "fileList":[Ljava/io/File;
    .end local v1    # "filteredFileList":Ljava/util/List;
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    .restart local p1    # "projectDirectory":Ljava/io/File;
    .restart local p2    # "archiveDirectory":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, p0

    :goto_1
    move-object/from16 v8, p2

    .line 126
    .local v0, "ioException":Ljava/io/IOException;
    :goto_2
    sget-object v1, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 128
    const/4 v1, 0x0

    .line 119
    .end local v0    # "ioException":Ljava/io/IOException;
    :goto_3
    return-object v1
.end method


# virtual methods
.method public final start(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .param p1, "successCallback"    # Lkotlin/jvm/functions/Function1;
    .param p2, "errorCallback"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "successCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->projectDirectory:Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->archiveDirectory:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->zipProjectToArchive(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 62
    .local v0, "projectArchive":Ljava/io/File;
    if-nez v0, :cond_0

    .line 63
    const/16 v1, 0x7dca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to zip directory for upload"

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->createUploadData(Ljava/io/File;)Lorg/catrobat/catroid/transfers/project/ProjectUploadData;

    move-result-object v1

    .line 69
    .local v1, "projectUploadData":Lorg/catrobat/catroid/transfers/project/ProjectUploadData;
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->projectName:Ljava/lang/String;

    iget-object v3, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->sceneNames:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->scaleSceneScreenshots(Ljava/lang/String;[Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lorg/catrobat/catroid/transfers/project/ProjectUpload;->serverCalls:Lorg/catrobat/catroid/web/ServerCalls;

    .line 72
    nop

    .line 73
    new-instance v3, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;

    invoke-direct {v3, p0, p1, v0}, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$1;-><init>(Lorg/catrobat/catroid/transfers/project/ProjectUpload;Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    check-cast v3, Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;

    .line 82
    new-instance v4, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$2;

    invoke-direct {v4, p2}, Lorg/catrobat/catroid/transfers/project/ProjectUpload$start$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v4, Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;

    .line 71
    invoke-virtual {v2, v1, v3, v4}, Lorg/catrobat/catroid/web/ServerCalls;->uploadProject(Lorg/catrobat/catroid/transfers/project/ProjectUploadData;Lorg/catrobat/catroid/web/ServerCalls$UploadSuccessCallback;Lorg/catrobat/catroid/web/ServerCalls$UploadErrorCallback;)V

    .line 89
    return-void
.end method
