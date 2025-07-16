.class public final Lorg/catrobat/paintroid/iotasks/LoadImage;
.super Ljava/lang/Object;
.source "LoadImage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;,
        Lorg/catrobat/paintroid/iotasks/LoadImage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eBG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0006\u0010\u0015\u001a\u00020\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/iotasks/LoadImage;",
        "",
        "callback",
        "Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;",
        "requestCode",
        "",
        "uri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "scaleImage",
        "",
        "commandSerializer",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializer;",
        "scopeIO",
        "Lkotlinx/coroutines/CoroutineScope;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;Lkotlinx/coroutines/CoroutineScope;Landroidx/test/espresso/idling/CountingIdlingResource;)V",
        "callbackRef",
        "Ljava/lang/ref/WeakReference;",
        "execute",
        "",
        "getBitmapReturnValue",
        "Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;",
        "resolver",
        "Landroid/content/ContentResolver;",
        "getMimeType",
        "",
        "Companion",
        "LoadImageCallback",
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
.field public static final Companion:Lorg/catrobat/paintroid/iotasks/LoadImage$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field private final requestCode:I

.field private final scaleImage:Z

.field private final scopeIO:Lkotlinx/coroutines/CoroutineScope;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/iotasks/LoadImage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/iotasks/LoadImage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/iotasks/LoadImage;->Companion:Lorg/catrobat/paintroid/iotasks/LoadImage$Companion;

    const-string v0, "LoadImage"

    .line 131
    sput-object v0, Lorg/catrobat/paintroid/iotasks/LoadImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;Lkotlinx/coroutines/CoroutineScope;Landroidx/test/espresso/idling/CountingIdlingResource;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandSerializer"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeIO"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->requestCode:I

    .line 40
    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->uri:Landroid/net/Uri;

    .line 42
    iput-boolean p5, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->scaleImage:Z

    .line 43
    iput-object p6, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    .line 44
    iput-object p7, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    .line 45
    iput-object p8, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 47
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->callbackRef:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getBitmapReturnValue(Lorg/catrobat/paintroid/iotasks/LoadImage;Landroid/net/Uri;Landroid/content/ContentResolver;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage;->getBitmapReturnValue(Landroid/net/Uri;Landroid/content/ContentResolver;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIdlingResource$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)Landroidx/test/espresso/idling/CountingIdlingResource;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    return-object p0
.end method

.method public static final synthetic access$getRequestCode$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)I
    .locals 0

    .line 37
    iget p0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->requestCode:I

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lorg/catrobat/paintroid/iotasks/LoadImage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUri$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)Landroid/net/Uri;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method private final getBitmapReturnValue(Landroid/net/Uri;Landroid/content/ContentResolver;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 3

    .line 65
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage;->getMimeType(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/zip"

    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/octet-stream"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->scaleImage:Z

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, p2, p1, v1}, Lorg/catrobat/paintroid/FileIO;->getScaledBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object p1

    goto :goto_1

    .line 81
    :cond_1
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, p2, p1, v1}, Lorg/catrobat/paintroid/FileIO;->getBitmapReturnValueFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object p1

    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->commandSerializer:Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/command/serialization/CommandSerializer;->readFromFile(Landroid/net/Uri;)Lorg/catrobat/paintroid/command/serialization/CatrobatFileContent;

    move-result-object v0

    .line 69
    new-instance v1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/command/serialization/CatrobatFileContent;->getCommandModel()Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v2

    invoke-virtual {v0}, Lorg/catrobat/paintroid/command/serialization/CatrobatFileContent;->getColorHistory()Lorg/catrobat/paintroid/colorpicker/ColorHistory;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Lorg/catrobat/paintroid/model/CommandManagerModel;Lorg/catrobat/paintroid/colorpicker/ColorHistory;)V
    :try_end_0
    .catch Lorg/catrobat/paintroid/command/serialization/CommandSerializer$NotCatrobatImageException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_1

    .line 71
    :catch_0
    sget-object v0, Lorg/catrobat/paintroid/iotasks/LoadImage;->TAG:Ljava/lang/String;

    const-string v1, "Image might be an ora file instead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->Companion:Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

    invoke-virtual {v0, p2, p1}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;->importOraFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final getMimeType(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "catrobat-image"

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "application/octet-stream"

    return-object p1

    .line 58
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p2

    const-string v0, "fileExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .line 88
    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0}, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget v1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->requestCode:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;->onLoadImagePreExecute(I)V

    .line 94
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 95
    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v0, v1, v6}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;-><init>(Lorg/catrobat/paintroid/iotasks/LoadImage;Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method
