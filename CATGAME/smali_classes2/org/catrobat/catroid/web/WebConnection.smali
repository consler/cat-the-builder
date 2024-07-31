.class public final Lorg/catrobat/catroid/web/WebConnection;
.super Ljava/lang/Object;
.source "WebConnection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;,
        Lorg/catrobat/catroid/web/WebConnection$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0002J\u0006\u0010\u0013\u001a\u00020\u000fR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/WebConnection;",
        "",
        "listener",
        "Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;",
        "url",
        "",
        "(Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;Ljava/lang/String;)V",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "(Lokhttp3/OkHttpClient;Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;Ljava/lang/String;)V",
        "call",
        "Lokhttp3/Call;",
        "weakListenerReference",
        "Ljava/lang/ref/WeakReference;",
        "cancelCall",
        "",
        "createCallback",
        "Lokhttp3/Callback;",
        "popListener",
        "sendWebRequest",
        "Companion",
        "WebRequestListener",
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
.field public static final Companion:Lorg/catrobat/catroid/web/WebConnection$Companion;

.field private static final EXCEPTION_MESSAGE_CANCELED:Ljava/lang/String; = "Canceled"

.field private static final EXCEPTION_MESSAGE_TIMEOUT:Ljava/lang/String; = "timeout"


# instance fields
.field private call:Lokhttp3/Call;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private final url:Ljava/lang/String;

.field private weakListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/web/WebConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/web/WebConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/web/WebConnection;->Companion:Lorg/catrobat/catroid/web/WebConnection$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;
    .param p2, "listener"    # Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    .param p3, "url"    # Ljava/lang/String;

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/web/WebConnection;->okHttpClient:Lokhttp3/OkHttpClient;

    iput-object p3, p0, Lorg/catrobat/catroid/web/WebConnection;->url:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/web/WebConnection;->weakListenerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    nop

    .line 41
    sget-object v0, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    iget-object v0, v0, Lorg/catrobat/catroid/stage/StageListener;->webConnectionHolder:Lorg/catrobat/catroid/web/WebConnectionHolder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/web/WebConnectionHolder;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/catrobat/catroid/web/WebConnection;-><init>(Lokhttp3/OkHttpClient;Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCall$p(Lorg/catrobat/catroid/web/WebConnection;)Lokhttp3/Call;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/web/WebConnection;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnection;->call:Lokhttp3/Call;

    return-object v0
.end method

.method public static final synthetic access$popListener(Lorg/catrobat/catroid/web/WebConnection;)Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/web/WebConnection;

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/web/WebConnection;->popListener()Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setCall$p(Lorg/catrobat/catroid/web/WebConnection;Lokhttp3/Call;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/web/WebConnection;
    .param p1, "<set-?>"    # Lokhttp3/Call;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/web/WebConnection;->call:Lokhttp3/Call;

    return-void
.end method

.method private final createCallback()Lokhttp3/Callback;
    .locals 1

    .line 71
    new-instance v0, Lorg/catrobat/catroid/web/WebConnection$createCallback$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/web/WebConnection$createCallback$1;-><init>(Lorg/catrobat/catroid/web/WebConnection;)V

    check-cast v0, Lokhttp3/Callback;

    return-object v0
.end method

.method private final declared-synchronized popListener()Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    .locals 2

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnection;->weakListenerReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;

    goto :goto_0

    .end local p0    # "this":Lorg/catrobat/catroid/web/WebConnection;
    :cond_0
    move-object v0, v1

    .line 51
    .local v0, "listener":Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    :goto_0
    check-cast v1, Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lorg/catrobat/catroid/web/WebConnection;->weakListenerReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-object v0

    .line 49
    .end local v0    # "listener":Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final cancelCall()V
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnection;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/catrobat/catroid/web/WebConnection$cancelCall$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/web/WebConnection$cancelCall$1;-><init>(Lorg/catrobat/catroid/web/WebConnection;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    return-void
.end method

.method public final declared-synchronized sendWebRequest()V
    .locals 4

    monitor-enter p0

    .line 57
    nop

    .line 58
    nop

    .line 61
    nop

    .line 58
    nop

    .line 60
    nop

    .line 58
    nop

    .line 59
    nop

    .line 58
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 59
    iget-object v1, p0, Lorg/catrobat/catroid/web/WebConnection;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 60
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (compatible; Catrobatbot/1.0; +https://catrob.at/bot)"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 58
    nop

    .line 62
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lorg/catrobat/catroid/web/WebConnection;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/web/WebConnection;->call:Lokhttp3/Call;

    .line 63
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/catrobat/catroid/web/WebConnection;->createCallback()Lokhttp3/Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    .end local v0    # "request":Lokhttp3/Request;
    .end local p0    # "this":Lorg/catrobat/catroid/web/WebConnection;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    :try_start_1
    iget-object v1, p0, Lorg/catrobat/catroid/web/WebConnection;->weakListenerReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;

    if-eqz v1, :cond_0

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/web/WebConnection$WebRequestListener;->onRequestError(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid URL"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    nop

    .line 68
    monitor-exit p0

    return-void

    .line 56
    :goto_1
    monitor-exit p0

    throw v0
.end method
