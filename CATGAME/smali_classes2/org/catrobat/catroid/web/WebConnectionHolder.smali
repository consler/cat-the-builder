.class public final Lorg/catrobat/catroid/web/WebConnectionHolder;
.super Ljava/lang/Object;
.source "WebConnectionHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/web/WebConnectionHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebConnectionHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebConnectionHolder.kt\norg/catrobat/catroid/web/WebConnectionHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1819#2,2:74\n*E\n*S KotlinDebug\n*F\n+ 1 WebConnectionHolder.kt\norg/catrobat/catroid/web/WebConnectionHolder\n*L\n57#1,2:74\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/WebConnectionHolder;",
        "",
        "()V",
        "connections",
        "",
        "Lorg/catrobat/catroid/web/WebConnection;",
        "getConnections",
        "()Ljava/util/List;",
        "setConnections",
        "(Ljava/util/List;)V",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "setOkHttpClient",
        "(Lokhttp3/OkHttpClient;)V",
        "addConnection",
        "",
        "connection",
        "onPause",
        "",
        "removeConnection",
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
.field public static final Companion:Lorg/catrobat/catroid/web/WebConnectionHolder$Companion;

.field private static final MAX_CONNECTIONS:I = 0xa

.field private static final TIMEOUT_DURATION:J = 0x3cL


# instance fields
.field private connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/web/WebConnection;",
            ">;"
        }
    .end annotation
.end field

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/web/WebConnectionHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/web/WebConnectionHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/web/WebConnectionHolder;->Companion:Lorg/catrobat/catroid/web/WebConnectionHolder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->connections:Ljava/util/List;

    .line 42
    nop

    .line 43
    nop

    .line 49
    nop

    .line 43
    nop

    .line 48
    nop

    .line 43
    nop

    .line 47
    nop

    .line 43
    nop

    .line 46
    nop

    .line 43
    nop

    .line 45
    nop

    .line 43
    nop

    .line 44
    nop

    .line 43
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 44
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 45
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 46
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 47
    const/4 v2, 0x3

    new-array v2, v2, [Lokhttp3/ConnectionSpec;

    sget-object v3, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 48
    new-instance v2, Lokhttp3/Dispatcher;

    invoke-direct {v2}, Lokhttp3/Dispatcher;-><init>()V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v2, "OkHttpClient.Builder()\n \u2026r())\n            .build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 51
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    const-string v2, "okHttpClient.dispatcher()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequestsPerHost(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public final declared-synchronized addConnection(Lorg/catrobat/catroid/web/WebConnection;)Z
    .locals 2
    .param p1, "connection"    # Lorg/catrobat/catroid/web/WebConnection;

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->connections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    .end local p0    # "this":Lorg/catrobat/catroid/web/WebConnectionHolder;
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    nop

    .line 66
    monitor-exit p0

    return v0

    .line 62
    .end local p1    # "connection":Lorg/catrobat/catroid/web/WebConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/web/WebConnection;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->connections:Ljava/util/List;

    return-object v0
.end method

.method public final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final declared-synchronized onPause()V
    .locals 6

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->connections:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 74
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/web/WebConnection;

    .local v4, "it":Lorg/catrobat/catroid/web/WebConnection;
    const/4 v5, 0x0

    .line 57
    .local v5, "$i$a$-forEach-WebConnectionHolder$onPause$1":I
    invoke-virtual {v4}, Lorg/catrobat/catroid/web/WebConnection;->cancelCall()V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/catrobat/catroid/web/WebConnection;
    .end local v5    # "$i$a$-forEach-WebConnectionHolder$onPause$1":I
    goto :goto_0

    .line 75
    .end local p0    # "this":Lorg/catrobat/catroid/web/WebConnectionHolder;
    :cond_0
    nop

    .line 58
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeConnection(Lorg/catrobat/catroid/web/WebConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/catrobat/catroid/web/WebConnection;

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->connections:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lorg/catrobat/catroid/web/WebConnectionHolder;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local p1    # "connection":Lorg/catrobat/catroid/web/WebConnection;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setConnections(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/web/WebConnection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->connections:Ljava/util/List;

    return-void
.end method

.method public final setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/OkHttpClient;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/web/WebConnectionHolder;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method
