.class public final Lorg/catrobat/paintroid/ui/MainActivityInteractor;
.super Ljava/lang/Object;
.source "MainActivityInteractor.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J:\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J(\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J2\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/MainActivityInteractor;",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Interactor;",
        "()V",
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
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "saveCopy",
        "Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;",
        "saveImage",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final scopeIO:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public createFile(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;
    .param p2, "requestCode"    # I
    .param p3, "filename"    # Ljava/lang/String;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lorg/catrobat/paintroid/iotasks/CreateFile;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/catrobat/paintroid/iotasks/CreateFile;-><init>(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v0}, Lorg/catrobat/paintroid/iotasks/CreateFile;->execute()V

    .line 48
    return-void
.end method

.method public loadFile(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;)V
    .locals 9
    .param p1, "callback"    # Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;
    .param p2, "requestCode"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "scaling"    # Z
    .param p6, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lorg/catrobat/paintroid/iotasks/LoadImage;

    iget-object v8, p0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/paintroid/iotasks/LoadImage;-><init>(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;ILandroid/net/Uri;Landroid/content/Context;ZLorg/catrobat/paintroid/tools/Workspace;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v0}, Lorg/catrobat/paintroid/iotasks/LoadImage;->execute()V

    .line 69
    return-void
.end method

.method public saveCopy(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/tools/Workspace;Landroid/content/Context;)V
    .locals 9
    .param p1, "callback"    # Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;
    .param p2, "requestCode"    # I
    .param p3, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p4, "context"    # Landroid/content/Context;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v8, p0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/paintroid/iotasks/SaveImage;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/tools/Workspace;Landroid/net/Uri;ZLandroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v0}, Lorg/catrobat/paintroid/iotasks/SaveImage;->execute()V

    .line 44
    return-void
.end method

.method public saveImage(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/tools/Workspace;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 9
    .param p1, "callback"    # Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;
    .param p2, "requestCode"    # I
    .param p3, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "context"    # Landroid/content/Context;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v8, p0, Lorg/catrobat/paintroid/ui/MainActivityInteractor;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lorg/catrobat/paintroid/iotasks/SaveImage;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;ILorg/catrobat/paintroid/tools/Workspace;Landroid/net/Uri;ZLandroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V

    invoke-virtual {v0}, Lorg/catrobat/paintroid/iotasks/SaveImage;->execute()V

    .line 58
    return-void
.end method
