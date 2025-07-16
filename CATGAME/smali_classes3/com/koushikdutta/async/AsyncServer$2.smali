.class Lcom/koushikdutta/async/AsyncServer$2;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->post(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field final synthetic val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$2;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$callback:Lcom/koushikdutta/async/callback/CompletedCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
