.class public final Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;
.super Landroidx/lifecycle/LiveData;
.source "NetworkConnectionMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;,
        Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0002H\u0007J\u0006\u0010\u0013\u001a\u00020\u0010R\u001e\u0010\u0006\u001a\u00060\u0007R\u00020\u0000X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;",
        "Landroidx/lifecycle/LiveData;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "callback",
        "Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;",
        "getCallback",
        "()Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;",
        "setCallback",
        "(Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;)V",
        "checkConnection",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "registerDefaultNetworkCallback",
        "",
        "setValueTo",
        "value",
        "unregisterDefaultNetworkCallback",
        "Companion",
        "ConnectionNetworkCallback",
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
.field public static final Companion:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public callback:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->Companion:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$Companion;

    .line 39
    const-class v0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$postValue(Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;
    .param p1, "p0"    # Ljava/lang/Boolean;

    .line 36
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final checkConnection(Landroid/net/ConnectivityManager;)Z
    .locals 5
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 66
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "connectivityManager.activeNetwork ?: return false"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .local v0, "network":Landroid/net/Network;
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 68
    .local v2, "actNw":Landroid/net/NetworkCapabilities;
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    invoke-virtual {v2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v3

    .line 68
    :cond_1
    return v1

    .line 66
    .end local v0    # "network":Landroid/net/Network;
    .end local v2    # "actNw":Landroid/net/NetworkCapabilities;
    :cond_2
    return v1
.end method


# virtual methods
.method public final getCallback()Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->callback:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

    if-nez v0, :cond_0

    const-string v1, "callback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final registerDefaultNetworkCallback()V
    .locals 4

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->checkConnection(Landroid/net/ConnectivityManager;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->postValue(Ljava/lang/Object;)V

    .line 54
    new-instance v1, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;-><init>(Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;)V

    iput-object v1, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->callback:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "callback"

    if-lt v1, v2, :cond_1

    .line 56
    iget-object v1, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->callback:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 58
    :cond_1
    nop

    .line 60
    nop

    .line 58
    nop

    .line 59
    nop

    .line 58
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 59
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 58
    nop

    .line 61
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->callback:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 62
    .end local v1    # "request":Landroid/net/NetworkRequest;
    :goto_0
    nop

    .line 63
    return-void

    .line 51
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCallback(Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->callback:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

    return-void
.end method

.method public final setValueTo(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 90
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->postValue(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public final unregisterDefaultNetworkCallback()V
    .locals 3

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->callback:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;

    if-nez v1, :cond_0

    const-string v2, "callback"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 48
    return-void

    .line 45
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
