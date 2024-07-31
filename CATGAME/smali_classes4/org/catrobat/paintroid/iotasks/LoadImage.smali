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
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
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
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "scopeIO",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;Lkotlinx/coroutines/CoroutineScope;)V",
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
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

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCode:I

.field private final scaleImage:Z

.field private final scopeIO:Lkotlinx/coroutines/CoroutineScope;

.field private final uri:Landroid/net/Uri;

.field private final workspace:Lorg/catrobat/paintroid/tools/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/iotasks/LoadImage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/iotasks/LoadImage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/iotasks/LoadImage;->Companion:Lorg/catrobat/paintroid/iotasks/LoadImage$Companion;

    .line 122
    const-class v0, Lorg/catrobat/paintroid/iotasks/LoadImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/iotasks/LoadImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;
    .param p2, "requestCode"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "scaleImage"    # Z
    .param p6, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p7, "scopeIO"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeIO"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->requestCode:I

    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->uri:Landroid/net/Uri;

    iput-boolean p5, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->scaleImage:Z

    iput-object p6, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    iput-object p7, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->callbackRef:Ljava/lang/ref/WeakReference;

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->context:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getBitmapReturnValue(Lorg/catrobat/paintroid/iotasks/LoadImage;Landroid/net/Uri;Landroid/content/ContentResolver;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/iotasks/LoadImage;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage;->getBitmapReturnValue(Landroid/net/Uri;Landroid/content/ContentResolver;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getRequestCode$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/iotasks/LoadImage;

    .line 37
    iget v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->requestCode:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lorg/catrobat/paintroid/iotasks/LoadImage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUri$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)Landroid/net/Uri;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/iotasks/LoadImage;

    .line 37
    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method private final getBitmapReturnValue(Landroid/net/Uri;Landroid/content/ContentResolver;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage;->getMimeType(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "application/zip"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/octet-stream"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-boolean v1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->scaleImage:Z

    if-eqz v1, :cond_1

    .line 75
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, p2, p1, v2}, Lorg/catrobat/paintroid/FileIO;->getScaledBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object v1

    goto :goto_2

    .line 77
    :cond_1
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, p2, p1, v2}, Lorg/catrobat/paintroid/FileIO;->getBitmapReturnValueFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object v1

    goto :goto_2

    .line 64
    :cond_2
    :goto_0
    nop

    .line 65
    :try_start_0
    new-instance v1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v2}, Lorg/catrobat/paintroid/tools/Workspace;->getCommandSerializationHelper()Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->readFromFile(Landroid/net/Uri;)Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
    :try_end_0
    .catch Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;
    sget-object v2, Lorg/catrobat/paintroid/iotasks/LoadImage;->TAG:Ljava/lang/String;

    const-string v3, "Image might be an ora file instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 68
    invoke-static {p2, p1}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->importOraFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object v2

    move-object v1, v2

    .line 64
    .end local v1    # "e":Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;
    :goto_1
    const-string v2, "try {\n                Bi\u2026          )\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :goto_2
    nop

    .line 63
    return-object v1
.end method

.method private final getMimeType(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "fileExtension":Ljava/lang/String;
    nop

    .line 55
    nop

    .line 54
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 55
    const-string v2, "fileExtension"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Locale.US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 50
    .end local v0    # "fileExtension":Ljava/lang/String;
    :goto_0
    nop

    .line 56
    return-object v0

    .line 55
    .restart local v0    # "fileExtension":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final execute()V
    .locals 9

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    .line 85
    .local v0, "callback":Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget v1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->requestCode:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;->onLoadImagePreExecute(I)V

    .line 90
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 91
    .local v1, "returnValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/LoadImage;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;

    invoke-direct {v6, p0, v0, v1, v2}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;-><init>(Lorg/catrobat/paintroid/iotasks/LoadImage;Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 112
    return-void

    .line 86
    .end local v1    # "returnValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_1
    :goto_0
    return-void
.end method
