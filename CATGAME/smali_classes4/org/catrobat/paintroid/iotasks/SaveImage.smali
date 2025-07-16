.class public final Lorg/catrobat/paintroid/iotasks/SaveImage;
.super Ljava/lang/Object;
.source "SaveImage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/iotasks/SaveImage$Companion;,
        Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveImage.kt\norg/catrobat/paintroid/iotasks/SaveImage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u00020\u0001:\u0002&\'BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010\u0017\u001a\u00020\u0018J4\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\u001c\u0010#\u001a\u0004\u0018\u00010\u000b2\u0006\u0010$\u001a\u00020\u00032\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J<\u0010%\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lorg/catrobat/paintroid/iotasks/SaveImage;",
        "",
        "activity",
        "Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;",
        "requestCode",
        "",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "commandSerializer",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializer;",
        "uri",
        "Landroid/net/Uri;",
        "saveAsCopy",
        "",
        "context",
        "Landroid/content/Context;",
        "scopeIO",
        "Lkotlinx/coroutines/CoroutineScope;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;ZLandroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroidx/test/espresso/idling/CountingIdlingResource;)V",
        "callbackRef",
        "Ljava/lang/ref/WeakReference;",
        "execute",
        "",
        "exportOraFile",
        "layers",
        "",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "fileName",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "getImageUri",
        "callback",
        "saveOraFile",
        "Companion",
        "SaveImageCallback",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/iotasks/SaveImage$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

.field private final context:Landroid/content/Context;

.field private final idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field private final layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

.field private final requestCode:I

.field private final saveAsCopy:Z

.field private final scopeIO:Lkotlinx/coroutines/CoroutineScope;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/iotasks/SaveImage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/iotasks/SaveImage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/iotasks/SaveImage;->Companion:Lorg/catrobat/paintroid/iotasks/SaveImage$Companion;

    const-string v0, "SaveImage"

    .line 51
    sput-object v0, Lorg/catrobat/paintroid/iotasks/SaveImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;ZLandroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroidx/test/espresso/idling/CountingIdlingResource;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandSerializer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeIO"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->requestCode:I

    .line 40
    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    .line 41
    iput-object p4, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    .line 42
    iput-object p5, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->uri:Landroid/net/Uri;

    .line 43
    iput-boolean p6, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->saveAsCopy:Z

    .line 44
    iput-object p7, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->context:Landroid/content/Context;

    .line 45
    iput-object p8, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    .line 46
    iput-object p9, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 48
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->callbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$exportOraFile(Lorg/catrobat/paintroid/iotasks/SaveImage;Ljava/util/List;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/iotasks/SaveImage;->exportOraFile(Ljava/util/List;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCommandSerializer$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/command/serialization/CommandSerializer;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    return-object p0
.end method

.method public static final synthetic access$getIdlingResource$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroidx/test/espresso/idling/CountingIdlingResource;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    return-object p0
.end method

.method public static final synthetic access$getImageUri(Lorg/catrobat/paintroid/iotasks/SaveImage;Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/SaveImage;->getImageUri(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLayerModel$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/contract/LayerContracts$Model;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->layerModel:Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    return-object p0
.end method

.method public static final synthetic access$getRequestCode$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)I
    .locals 0

    .line 37
    iget p0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->requestCode:I

    return p0
.end method

.method public static final synthetic access$getSaveAsCopy$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->saveAsCopy:Z

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lorg/catrobat/paintroid/iotasks/SaveImage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUri$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroid/net/Uri;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic access$saveOraFile(Lorg/catrobat/paintroid/iotasks/SaveImage;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lorg/catrobat/paintroid/iotasks/SaveImage;->saveOraFile(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private final exportOraFile(Ljava/util/List;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/content/ContentResolver;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 92
    :try_start_0
    sget-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->Companion:Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;->exportToOraFile(Ljava/util/List;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    sget-object p2, Lorg/catrobat/paintroid/iotasks/SaveImage;->TAG:Ljava/lang/String;

    const-string p3, "Can\'t save image file "

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 100
    move-object p2, p1

    check-cast p2, Landroid/net/Uri;

    :goto_0
    return-object p1
.end method

.method private final getImageUri(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3

    .line 58
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->uri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 60
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-interface {p1}, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p2, p1, v2}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 63
    :cond_1
    sget-object p1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, p2, v0}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToUri(Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final saveOraFile(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/content/ContentResolver;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 74
    :try_start_0
    sget-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->Companion:Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;->saveOraFileToUri(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    sget-object p2, Lorg/catrobat/paintroid/iotasks/SaveImage;->TAG:Ljava/lang/String;

    const-string p3, "Can\'t save image file "

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 83
    move-object p2, p1

    check-cast p2, Landroid/net/Uri;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .line 105
    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0}, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->requestCode:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;->onSaveImagePreExecute(I)V

    .line 112
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 113
    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v1, v0, v6}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method
