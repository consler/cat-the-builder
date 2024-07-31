.class Lcom/koushikdutta/async/future/Continuation$3;
.super Ljava/lang/Object;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ContinuationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/Continuation;->add(Lcom/koushikdutta/async/future/DependentFuture;)Lcom/koushikdutta/async/future/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/future/Continuation;

.field final synthetic val$future:Lcom/koushikdutta/async/future/DependentFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/future/DependentFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/future/Continuation;

    .line 99
    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation$3;->this$0:Lcom/koushikdutta/async/future/Continuation;

    iput-object p2, p0, Lcom/koushikdutta/async/future/Continuation$3;->val$future:Lcom/koushikdutta/async/future/DependentFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue(Lcom/koushikdutta/async/future/Continuation;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "continuation"    # Lcom/koushikdutta/async/future/Continuation;
    .param p2, "next"    # Lcom/koushikdutta/async/callback/CompletedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$3;->val$future:Lcom/koushikdutta/async/future/DependentFuture;

    invoke-interface {v0}, Lcom/koushikdutta/async/future/DependentFuture;->get()Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 104
    return-void
.end method
