.class Lcom/koushikdutta/async/http/socketio/EventEmitter$1;
.super Ljava/lang/Object;
.source "EventEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/EventEmitter$OnceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/EventEmitter;->once(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/EventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/EventEmitter;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/socketio/EventCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/EventEmitter;Lcom/koushikdutta/async/http/socketio/EventCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/EventEmitter$1;->this$0:Lcom/koushikdutta/async/http/socketio/EventEmitter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/EventEmitter$1;->val$callback:Lcom/koushikdutta/async/http/socketio/EventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/EventEmitter$1;->val$callback:Lcom/koushikdutta/async/http/socketio/EventCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/socketio/EventCallback;->onEvent(Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    return-void
.end method
