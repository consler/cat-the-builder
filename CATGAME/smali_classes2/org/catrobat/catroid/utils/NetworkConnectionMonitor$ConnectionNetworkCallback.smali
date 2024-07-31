.class public final Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkConnectionMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectionNetworkCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "(Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;)V",
        "onAvailable",
        "",
        "network",
        "Landroid/net/Network;",
        "onLost",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;->this$0:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;->this$0:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->access$postValue(Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;Ljava/lang/Boolean;)V

    .line 78
    invoke-static {}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor$ConnectionNetworkCallback;->this$0:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->access$postValue(Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;Ljava/lang/Boolean;)V

    .line 84
    invoke-static {}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
