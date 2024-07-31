.class public interface abstract Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;
.super Ljava/lang/Object;
.source "SocketIOTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;
    }
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract getServer()Lcom/koushikdutta/async/AsyncServer;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract heartbeats()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method

.method public abstract setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V
.end method
