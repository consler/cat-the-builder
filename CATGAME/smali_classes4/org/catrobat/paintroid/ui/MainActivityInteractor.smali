.class public final Lorg/catrobat/paintroid/ui/MainActivityInteractor;
.super Ljava/lang/Object;
.source "MainActivityInteractor.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J:\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J:\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J:\u0010\u001d\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/MainActivityInteractor;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "(Landroidx/test/espresso/idling/CountingIdlingResource;)V",
        "scopeIO",
        "Lkotlinx/coroutines/CoroutineScope;",
        "createFile",
        "",
        "callback",
        "Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;",
        "requestCode",
        "",
        "filename",
        "",
        "loadFile",
        "Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;",
        "uri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "scaling",
        "",
        "commandSerializer",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializer;",
        "saveCopy",
        "Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "saveImage",
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


# instance fields
.field private final idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

.field private final scopeIO:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/idling/CountingIdlingResource;)V
    .locals 1

    const-string v0, "idlingResource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    .line 37
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public createFile(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lorg/catrobat/paintroid/iotasks/CreateFile;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/catrobat/paintroid/iotasks/CreateFile;-><init>(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v0}, Lorg/catrobat/paintroid/iotasks/CreateFile;->execute()V

    return-void
.end method

.method public loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;)V
    .locals 11

    move-object v0, p0

    const-string v1, "callback"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object v6, p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commandSerializer"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lorg/catrobat/paintroid/iotasks/LoadImage;

    iget-object v9, v0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    move-object v2, v1

    move v4, p2

    move-object v5, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/iotasks/LoadImage;-><init>(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/command/serialization/CommandSerializer;Lkotlinx/coroutines/CoroutineScope;Landroidx/test/espresso/idling/CountingIdlingResource;)V

    invoke-virtual {v1}, Lorg/catrobat/paintroid/iotasks/LoadImage;->execute()V

    return-void
.end method

.method public saveCopy(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 12

    move-object v0, p0

    const-string v1, "callback"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layerModel"

    move-object v5, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commandSerializer"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lorg/catrobat/paintroid/iotasks/SaveImage;

    const/4 v8, 0x1

    iget-object v10, v0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    iget-object v11, v0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    move-object v2, v1

    move v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/iotasks/SaveImage;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;ZLandroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroidx/test/espresso/idling/CountingIdlingResource;)V

    invoke-virtual {v1}, Lorg/catrobat/paintroid/iotasks/SaveImage;->execute()V

    return-void
.end method

.method public saveImage(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 12

    move-object v0, p0

    const-string v1, "callback"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layerModel"

    move-object v5, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commandSerializer"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object/from16 v9, p6

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lorg/catrobat/paintroid/iotasks/SaveImage;

    const/4 v8, 0x0

    iget-object v10, v0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    iget-object v11, v0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->idlingResource:Landroidx/test/espresso/idling/CountingIdlingResource;

    move-object v2, v1

    move v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/iotasks/SaveImage;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/contract/LayerContracts$Model;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;Landroid/net/Uri;ZLandroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Landroidx/test/espresso/idling/CountingIdlingResource;)V

    invoke-virtual {v1}, Lorg/catrobat/paintroid/iotasks/SaveImage;->execute()V

    return-void
.end method
