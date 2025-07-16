.class Lcom/koushikdutta/async/AsyncServer$10;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->getByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "Ljava/net/InetAddress;",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$10;->this$0:Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    check-cast p1, [Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer$10;->transform([Ljava/net/InetAddress;)V

    return-void
.end method

.method protected transform([Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 477
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer$10;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method
