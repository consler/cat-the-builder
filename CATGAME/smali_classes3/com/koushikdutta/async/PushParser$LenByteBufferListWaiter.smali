.class Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LenByteBufferListWaiter"
.end annotation


# instance fields
.field private final callback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "callback":Lcom/koushikdutta/async/PushParser$ParseCallback;, "Lcom/koushikdutta/async/PushParser$ParseCallback<Lcom/koushikdutta/async/ByteBufferList;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 104
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 105
    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 109
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    .line 110
    .local v0, "length":I
    new-instance v1, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;

    iget-object v2, p0, Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-direct {v1, v0, v2}, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    return-object v1
.end method
