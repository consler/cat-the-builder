.class public Lcom/koushikdutta/async/PushParser;
.super Ljava/lang/Object;
.source "PushParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/PushParser$TapWaiter;,
        Lcom/koushikdutta/async/PushParser$UntilWaiter;,
        Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;,
        Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;,
        Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;,
        Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;,
        Lcom/koushikdutta/async/PushParser$IntWaiter;,
        Lcom/koushikdutta/async/PushParser$Waiter;,
        Lcom/koushikdutta/async/PushParser$ParseCallback;
    }
.end annotation


# static fields
.field static mTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private args:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private byteArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

.field private byteArrayArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;"
        }
    .end annotation
.end field

.field private byteBufferListArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field

.field private intArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

.field private longArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

.field mEmitter:Lcom/koushikdutta/async/DataEmitter;

.field private mWaiting:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/PushParser$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private noopArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

.field order:Ljava/nio/ByteOrder;

.field pending:Lcom/koushikdutta/async/ByteBufferList;

.field private shortArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

.field private stringArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 344
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/PushParser;->mTable:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 2
    .param p1, "s"    # Lcom/koushikdutta/async/DataEmitter;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/koushikdutta/async/PushParser$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$1;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->noopArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 187
    new-instance v0, Lcom/koushikdutta/async/PushParser$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$2;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->byteArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 195
    new-instance v0, Lcom/koushikdutta/async/PushParser$3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$3;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->shortArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 203
    new-instance v0, Lcom/koushikdutta/async/PushParser$4;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$4;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->intArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 211
    new-instance v0, Lcom/koushikdutta/async/PushParser$5;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$5;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->longArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 219
    new-instance v0, Lcom/koushikdutta/async/PushParser$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$6;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->byteArrayArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 226
    new-instance v0, Lcom/koushikdutta/async/PushParser$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$7;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->byteBufferListArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 233
    new-instance v0, Lcom/koushikdutta/async/PushParser$8;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$8;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->stringArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->args:Ljava/util/ArrayList;

    .line 243
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->order:Ljava/nio/ByteOrder;

    .line 327
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 251
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 252
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/koushikdutta/async/PushParser;

    .line 13
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->args:Ljava/util/ArrayList;

    return-object v0
.end method

.method static getTap(Lcom/koushikdutta/async/TapCallback;)Ljava/lang/reflect/Method;
    .locals 8
    .param p0, "callback"    # Lcom/koushikdutta/async/TapCallback;

    .line 346
    sget-object v0, Lcom/koushikdutta/async/PushParser;->mTable:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 347
    .local v0, "found":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 348
    return-object v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 351
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tap"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    sget-object v1, Lcom/koushikdutta/async/PushParser;->mTable:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-object v5

    .line 350
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 360
    .local v1, "candidates":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 361
    aget-object v2, v1, v3

    return-object v2

    .line 363
    :cond_3
    const-string v2, "-keep class * extends com.koushikdutta.async.TapCallback {\n    *;\n}\n"

    .line 369
    .local v2, "fail":Ljava/lang/String;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public noop()Lcom/koushikdutta/async/PushParser;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->noopArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 324
    return-object p0
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 330
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/PushParser$Waiter;

    iget v1, v1, Lcom/koushikdutta/async/PushParser$Waiter;->length:I

    if-lt v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->pending:Lcom/koushikdutta/async/ByteBufferList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 333
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/PushParser$Waiter;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/PushParser$Waiter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;

    move-result-object v0

    .line 334
    .local v0, "next":Lcom/koushikdutta/async/PushParser$Waiter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 335
    .end local v0    # "next":Lcom/koushikdutta/async/PushParser$Waiter;
    :cond_0
    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 338
    :cond_2
    return-void
.end method

.method public readByte()Lcom/koushikdutta/async/PushParser;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->byteArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 277
    return-object p0
.end method

.method public readByteArray(I)Lcom/koushikdutta/async/PushParser;
    .locals 1
    .param p1, "length"    # I

    .line 296
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/PushParser;->readLenByteArray()Lcom/koushikdutta/async/PushParser;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->byteArrayArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    .line 261
    .local p2, "callback":Lcom/koushikdutta/async/PushParser$ParseCallback;, "Lcom/koushikdutta/async/PushParser$ParseCallback<[B>;"
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 262
    return-object p0
.end method

.method public readByteBufferList(I)Lcom/koushikdutta/async/PushParser;
    .locals 1
    .param p1, "length"    # I

    .line 305
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/PushParser;->readLenByteBufferList()Lcom/koushikdutta/async/PushParser;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->byteBufferListArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/PushParser;->readByteBufferList(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public readByteBufferList(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    .line 266
    .local p2, "callback":Lcom/koushikdutta/async/PushParser$ParseCallback;, "Lcom/koushikdutta/async/PushParser$ParseCallback<Lcom/koushikdutta/async/ByteBufferList;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 267
    return-object p0
.end method

.method public readInt()Lcom/koushikdutta/async/PushParser;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->intArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 287
    return-object p0
.end method

.method public readInt(Lcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    .line 256
    .local p1, "callback":Lcom/koushikdutta/async/PushParser$ParseCallback;, "Lcom/koushikdutta/async/PushParser$ParseCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$IntWaiter;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/PushParser$IntWaiter;-><init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 257
    return-object p0
.end method

.method public readLenByteArray()Lcom/koushikdutta/async/PushParser;
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;

    iget-object v2, p0, Lcom/koushikdutta/async/PushParser;->byteArrayArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;-><init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 301
    return-object p0
.end method

.method public readLenByteBufferList()Lcom/koushikdutta/async/PushParser;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->byteBufferListArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/PushParser;->readLenByteBufferList(Lcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    move-result-object v0

    return-object v0
.end method

.method public readLenByteBufferList(Lcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    .line 313
    .local p1, "callback":Lcom/koushikdutta/async/PushParser$ParseCallback;, "Lcom/koushikdutta/async/PushParser$ParseCallback<Lcom/koushikdutta/async/ByteBufferList;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;-><init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 314
    return-object p0
.end method

.method public readLong()Lcom/koushikdutta/async/PushParser;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->longArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 292
    return-object p0
.end method

.method public readShort()Lcom/koushikdutta/async/PushParser;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->shortArgWaiter:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    return-object p0
.end method

.method public readString()Lcom/koushikdutta/async/PushParser;
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;

    iget-object v2, p0, Lcom/koushikdutta/async/PushParser;->stringArgCallback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;-><init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 319
    return-object p0
.end method

.method public setOrder(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/PushParser;
    .locals 0
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 246
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser;->order:Ljava/nio/ByteOrder;

    .line 247
    return-object p0
.end method

.method public tap(Lcom/koushikdutta/async/TapCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/koushikdutta/async/TapCallback;

    .line 341
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$TapWaiter;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/PushParser$TapWaiter;-><init>(Lcom/koushikdutta/async/PushParser;Lcom/koushikdutta/async/TapCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method public until(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .param p1, "b"    # B
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$UntilWaiter;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/PushParser$UntilWaiter;-><init>(BLcom/koushikdutta/async/callback/DataCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    return-object p0
.end method
