.class public Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;
.super Ljava/lang/Object;
.source "SocketIORequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/socketio/SocketIORequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field randomizeReconnectDelay:Z

.field reconnectDelay:J

.field reconnectDelayMax:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->randomizeReconnectDelay:Z

    const-wide/16 v0, 0x3e8

    .line 51
    iput-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelay:J

    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelayMax:J

    return-void
.end method


# virtual methods
.method public getReconnectDelay()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelay:J

    return-wide v0
.end method

.method public getReconnectDelayMax()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelayMax:J

    return-wide v0
.end method

.method public isRandomizeReconnectDelay()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->randomizeReconnectDelay:Z

    return v0
.end method

.method public setRandomizeReconnectDelay(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->randomizeReconnectDelay:Z

    return-void
.end method

.method public setReconnectDelay(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 56
    iput-wide p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelay:J

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reconnectDelay must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReconnectDelayMax(J)V
    .locals 4

    .line 64
    iget-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 67
    iput-wide p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIORequest$Config;->reconnectDelayMax:J

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reconnectDelayMax must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
