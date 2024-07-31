.class Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndEmitter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    .param p1, "x1"    # Ljava/lang/Exception;

    .line 44
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public static create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    .locals 2
    .param p0, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 49
    new-instance v0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;-><init>()V

    .line 52
    .local v0, "ret":Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    new-instance v1, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;-><init>(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 58
    return-object v0
.end method
