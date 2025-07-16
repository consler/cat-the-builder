.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;

.field regex:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;-><init>()V

    return-void
.end method
