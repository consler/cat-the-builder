.class Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArrayWaiter"
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 49
    .local p2, "callback":Lcom/koushikdutta/async/PushParser$ParseCallback;, "Lcom/koushikdutta/async/PushParser$ParseCallback<[B>;"
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 50
    if-lez p1, :cond_0

    .line 52
    iput-object p2, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 53
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length should be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 57
    iget v0, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->length:I

    new-array v0, v0, [B

    .line 58
    .local v0, "bytes":[B
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 59
    iget-object v1, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/PushParser$ParseCallback;->parsed(Ljava/lang/Object;)V

    .line 60
    const/4 v1, 0x0

    return-object v1
.end method
