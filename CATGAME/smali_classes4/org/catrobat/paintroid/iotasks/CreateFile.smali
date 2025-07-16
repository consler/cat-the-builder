.class public final Lorg/catrobat/paintroid/iotasks/CreateFile;
.super Ljava/lang/Object;
.source "CreateFile.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;,
        Lorg/catrobat/paintroid/iotasks/CreateFile$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\r\u001a\u00020\u000eR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/iotasks/CreateFile;",
        "",
        "callback",
        "Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;",
        "requestCode",
        "",
        "filename",
        "",
        "scopeIO",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V",
        "callbackRef",
        "Ljava/lang/ref/WeakReference;",
        "execute",
        "",
        "Companion",
        "CreateFileCallback",
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
.field public static final Companion:Lorg/catrobat/paintroid/iotasks/CreateFile$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final filename:Ljava/lang/String;

.field private final requestCode:I

.field private final scopeIO:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/iotasks/CreateFile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/iotasks/CreateFile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/iotasks/CreateFile;->Companion:Lorg/catrobat/paintroid/iotasks/CreateFile$Companion;

    const-string v0, "CreateFile"

    .line 65
    sput-object v0, Lorg/catrobat/paintroid/iotasks/CreateFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;ILjava/lang/String;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeIO"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p2, p0, Lorg/catrobat/paintroid/iotasks/CreateFile;->requestCode:I

    .line 35
    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/CreateFile;->filename:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lorg/catrobat/paintroid/iotasks/CreateFile;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/CreateFile;->callbackRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$getFilename$p(Lorg/catrobat/paintroid/iotasks/CreateFile;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/catrobat/paintroid/iotasks/CreateFile;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRequestCode$p(Lorg/catrobat/paintroid/iotasks/CreateFile;)I
    .locals 0

    .line 32
    iget p0, p0, Lorg/catrobat/paintroid/iotasks/CreateFile;->requestCode:I

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lorg/catrobat/paintroid/iotasks/CreateFile;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 8

    .line 42
    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/CreateFile;->callbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;

    .line 43
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 44
    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/CreateFile;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;

    const/4 v6, 0x0

    invoke-direct {v5, v1, p0, v0, v6}, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/catrobat/paintroid/iotasks/CreateFile;Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
