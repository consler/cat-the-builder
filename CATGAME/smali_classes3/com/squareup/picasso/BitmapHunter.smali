.class Lcom/squareup/picasso/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;

.field private static final ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

.field private static final NAME_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field action:Lcom/squareup/picasso/Action;

.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final data:Lcom/squareup/picasso/Request;

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifOrientation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field final memoryPolicy:I

.field networkPolicy:I

.field final picasso:Lcom/squareup/picasso/Picasso;

.field priority:Lcom/squareup/picasso/Picasso$Priority;

.field final requestHandler:Lcom/squareup/picasso/RequestHandler;

.field result:Landroid/graphics/Bitmap;

.field retryCount:I

.field final sequence:I

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$1;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$2;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$2;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V
    .locals 1
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "dispatcher"    # Lcom/squareup/picasso/Dispatcher;
    .param p3, "cache"    # Lcom/squareup/picasso/Cache;
    .param p4, "stats"    # Lcom/squareup/picasso/Stats;
    .param p5, "action"    # Lcom/squareup/picasso/Action;
    .param p6, "requestHandler"    # Lcom/squareup/picasso/RequestHandler;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->sequence:I

    .line 106
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 107
    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 108
    iput-object p3, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    .line 109
    iput-object p4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 110
    iput-object p5, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 111
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 112
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 113
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 114
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getMemoryPolicy()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    .line 115
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getNetworkPolicy()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 116
    iput-object p6, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 117
    invoke-virtual {p6}, Lcom/squareup/picasso/RequestHandler;->getRetryCount()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 118
    return-void
.end method

.method static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 441
    .local p0, "transformations":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/Transformation;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 442
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/Transformation;

    .line 445
    .local v2, "transformation":Lcom/squareup/picasso/Transformation;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p1}, Lcom/squareup/picasso/Transformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .local v4, "newResult":Landroid/graphics/Bitmap;
    nop

    .line 456
    if-nez v4, :cond_1

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    const-string v6, "Transformation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-interface {v2}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v6, " returned null after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const-string v6, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 463
    .local v5, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/picasso/Transformation;

    .line 464
    .local v7, "t":Lcom/squareup/picasso/Transformation;
    invoke-interface {v7}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    .end local v7    # "t":Lcom/squareup/picasso/Transformation;
    goto :goto_1

    .line 466
    :cond_0
    sget-object v6, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v7, Lcom/squareup/picasso/BitmapHunter$4;

    invoke-direct {v7, v5}, Lcom/squareup/picasso/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-object v3

    .line 474
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    if-ne v4, p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 475
    sget-object v5, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v6, Lcom/squareup/picasso/BitmapHunter$5;

    invoke-direct {v6, v2}, Lcom/squareup/picasso/BitmapHunter$5;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-object v3

    .line 486
    :cond_2
    if-eq v4, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 487
    sget-object v5, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v6, Lcom/squareup/picasso/BitmapHunter$6;

    invoke-direct {v6, v2}, Lcom/squareup/picasso/BitmapHunter$6;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    return-object v3

    .line 497
    :cond_3
    move-object p1, v4

    .line 441
    .end local v2    # "transformation":Lcom/squareup/picasso/Transformation;
    .end local v4    # "newResult":Landroid/graphics/Bitmap;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 446
    .restart local v2    # "transformation":Lcom/squareup/picasso/Transformation;
    :catch_0
    move-exception v4

    .line 447
    .local v4, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v6, Lcom/squareup/picasso/BitmapHunter$3;

    invoke-direct {v6, v2, v4}, Lcom/squareup/picasso/BitmapHunter$3;-><init>(Lcom/squareup/picasso/Transformation;Ljava/lang/RuntimeException;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-object v3

    .line 499
    .end local v0    # "i":I
    .end local v1    # "count":I
    .end local v2    # "transformation":Lcom/squareup/picasso/Transformation;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_4
    return-object p1
.end method

.method private computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 8

    .line 322
    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 324
    .local v0, "newPriority":Lcom/squareup/picasso/Picasso$Priority;
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 325
    .local v1, "hasMultiple":Z
    :goto_0
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    .line 328
    .local v2, "hasAny":Z
    :cond_2
    if-nez v2, :cond_3

    .line 329
    return-object v0

    .line 332
    :cond_3
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-eqz v3, :cond_4

    .line 333
    invoke-virtual {v3}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    .line 336
    :cond_4
    if-eqz v1, :cond_6

    .line 338
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 339
    iget-object v5, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/picasso/Action;

    invoke-virtual {v5}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v5

    .line 340
    .local v5, "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    invoke-virtual {v5}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v6

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v7

    if-le v6, v7, :cond_5

    .line 341
    move-object v0, v5

    .line 338
    .end local v5    # "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 346
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_6
    return-object v0
.end method

.method static decodeStream(Lokio/Source;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "source"    # Lokio/Source;
    .param p1, "request"    # Lcom/squareup/picasso/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 128
    .local v0, "bufferedSource":Lokio/BufferedSource;
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->isWebPFile(Lokio/BufferedSource;)Z

    move-result v1

    .line 129
    .local v1, "isWebPFile":Z
    iget-boolean v2, p1, Lcom/squareup/picasso/Request;->purgeable:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 130
    .local v2, "isPurgeable":Z
    :goto_0
    invoke-static {p1}, Lcom/squareup/picasso/RequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 131
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v5}, Lcom/squareup/picasso/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v6

    .line 136
    .local v6, "calculateSize":Z
    if-nez v1, :cond_4

    if-eqz v2, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 146
    .local v7, "stream":Ljava/io/InputStream;
    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 148
    new-instance v9, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v9, v7}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    .local v9, "markStream":Lcom/squareup/picasso/MarkableInputStream;
    move-object v7, v9

    .line 150
    invoke-virtual {v9, v4}, Lcom/squareup/picasso/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 151
    const/16 v4, 0x400

    invoke-virtual {v9, v4}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v10

    .line 152
    .local v10, "mark":J
    invoke-static {v7, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 153
    iget v4, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v12, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v4, v12, v5, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 155
    invoke-virtual {v9, v10, v11}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 156
    invoke-virtual {v9, v3}, Lcom/squareup/picasso/MarkableInputStream;->allowMarksToExpire(Z)V

    .line 158
    .end local v9    # "markStream":Lcom/squareup/picasso/MarkableInputStream;
    .end local v10    # "mark":J
    :cond_2
    invoke-static {v7, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 159
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 163
    return-object v3

    .line 161
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v8, "Failed to decode stream."

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "stream":Ljava/io/InputStream;
    :cond_4
    :goto_1
    invoke-interface {v0}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object v3

    .line 138
    .local v3, "bytes":[B
    if-eqz v6, :cond_5

    .line 139
    array-length v7, v3

    invoke-static {v3, v4, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 140
    iget v7, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v8, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v7, v8, v5, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 143
    :cond_5
    array-length v7, v3

    invoke-static {v3, v4, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method static forRequest(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;
    .locals 13
    .param p0, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p1, "dispatcher"    # Lcom/squareup/picasso/Dispatcher;
    .param p2, "cache"    # Lcom/squareup/picasso/Cache;
    .param p3, "stats"    # Lcom/squareup/picasso/Stats;
    .param p4, "action"    # Lcom/squareup/picasso/Action;

    .line 425
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v0

    .line 426
    .local v0, "request":Lcom/squareup/picasso/Request;
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->getRequestHandlers()Ljava/util/List;

    move-result-object v1

    .line 430
    .local v1, "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/picasso/RequestHandler;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 431
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/picasso/RequestHandler;

    .line 432
    .local v4, "requestHandler":Lcom/squareup/picasso/RequestHandler;
    invoke-virtual {v4, v0}, Lcom/squareup/picasso/RequestHandler;->canHandleRequest(Lcom/squareup/picasso/Request;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    new-instance v12, Lcom/squareup/picasso/BitmapHunter;

    move-object v5, v12

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    return-object v12

    .line 430
    .end local v4    # "requestHandler":Lcom/squareup/picasso/RequestHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    new-instance v2, Lcom/squareup/picasso/BitmapHunter;

    sget-object v10, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    return-object v2
.end method

.method static getExifRotation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .line 662
    packed-switch p0, :pswitch_data_0

    .line 676
    const/4 v0, 0x0

    .local v0, "rotation":I
    goto :goto_0

    .line 673
    .end local v0    # "rotation":I
    :pswitch_0
    const/16 v0, 0x10e

    .line 674
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 665
    .end local v0    # "rotation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 666
    .restart local v0    # "rotation":I
    goto :goto_0

    .line 669
    .end local v0    # "rotation":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 670
    .restart local v0    # "rotation":I
    nop

    .line 678
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getExifTranslation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .line 683
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 691
    const/4 v0, 0x1

    .local v0, "translation":I
    goto :goto_0

    .line 688
    .end local v0    # "translation":I
    :cond_0
    const/4 v0, -0x1

    .line 689
    .restart local v0    # "translation":I
    nop

    .line 693
    :goto_0
    return v0
.end method

.method private static shouldResize(ZIIII)Z
    .locals 1
    .param p0, "onlyScaleDown"    # Z
    .param p1, "inWidth"    # I
    .param p2, "inHeight"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I

    .line 656
    if-eqz p0, :cond_2

    if-eqz p3, :cond_0

    if-gt p1, p3, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 47
    .param p0, "data"    # Lcom/squareup/picasso/Request;
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "exifOrientation"    # I

    .line 503
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 504
    .local v1, "inWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 505
    .local v2, "inHeight":I
    iget-boolean v3, v0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    .line 507
    .local v3, "onlyScaleDown":Z
    const/4 v4, 0x0

    .line 508
    .local v4, "drawX":I
    const/4 v5, 0x0

    .line 509
    .local v5, "drawY":I
    move v6, v1

    .line 510
    .local v6, "drawWidth":I
    move v7, v2

    .line 512
    .local v7, "drawHeight":I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 514
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object v4, v8

    move v8, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_10

    .line 515
    :cond_1
    :goto_0
    iget v9, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 516
    .local v9, "targetWidth":I
    iget v10, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 518
    .local v10, "targetHeight":I
    iget v11, v0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    .line 519
    .local v11, "targetRotation":F
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_3

    .line 520
    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 521
    .local v12, "cosR":D
    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 522
    .local v14, "sinR":D
    move/from16 v16, v4

    .end local v4    # "drawX":I
    .local v16, "drawX":I
    iget-boolean v4, v0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-eqz v4, :cond_2

    .line 523
    iget v4, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    move/from16 v17, v5

    .end local v5    # "drawY":I
    .local v17, "drawY":I
    iget v5, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    invoke-virtual {v8, v11, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 525
    iget v4, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    float-to-double v4, v4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v20, v18, v12

    mul-double v4, v4, v20

    move/from16 v20, v6

    .end local v6    # "drawWidth":I
    .local v20, "drawWidth":I
    iget v6, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    move/from16 v21, v7

    .end local v7    # "drawHeight":I
    .local v21, "drawHeight":I
    float-to-double v6, v6

    mul-double/2addr v6, v14

    add-double/2addr v4, v6

    .line 526
    .local v4, "x1T":D
    iget v6, v0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    float-to-double v6, v6

    sub-double v18, v18, v12

    mul-double v6, v6, v18

    move/from16 v18, v9

    .end local v9    # "targetWidth":I
    .local v18, "targetWidth":I
    iget v9, v0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    move/from16 v19, v10

    .end local v10    # "targetHeight":I
    .local v19, "targetHeight":I
    float-to-double v9, v9

    mul-double/2addr v9, v14

    sub-double/2addr v6, v9

    .line 527
    .local v6, "y1T":D
    iget v9, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v9, v9

    mul-double/2addr v9, v12

    add-double/2addr v9, v4

    .line 528
    .local v9, "x2T":D
    move/from16 v22, v3

    .end local v3    # "onlyScaleDown":Z
    .local v22, "onlyScaleDown":Z
    iget v3, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    move/from16 v23, v2

    .end local v2    # "inHeight":I
    .local v23, "inHeight":I
    int-to-double v2, v3

    mul-double/2addr v2, v14

    add-double/2addr v2, v6

    .line 529
    .local v2, "y2T":D
    move/from16 v24, v1

    .end local v1    # "inWidth":I
    .local v24, "inWidth":I
    iget v1, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    move-wide/from16 v25, v2

    .end local v2    # "y2T":D
    .local v25, "y2T":D
    int-to-double v1, v1

    mul-double/2addr v1, v12

    add-double/2addr v1, v4

    iget v3, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    move-object/from16 v27, v8

    move-wide/from16 v28, v9

    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "x2T":D
    .local v27, "matrix":Landroid/graphics/Matrix;
    .local v28, "x2T":D
    int-to-double v8, v3

    mul-double/2addr v8, v14

    sub-double/2addr v1, v8

    .line 530
    .local v1, "x3T":D
    iget v3, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v8, v3

    mul-double/2addr v8, v14

    add-double/2addr v8, v6

    iget v3, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    move/from16 v30, v11

    .end local v11    # "targetRotation":F
    .local v30, "targetRotation":F
    int-to-double v10, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 531
    .local v8, "y3T":D
    iget v3, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v10, v3

    mul-double/2addr v10, v14

    sub-double v10, v4, v10

    .line 532
    .local v10, "x4T":D
    iget v3, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    move-wide/from16 v31, v14

    .end local v14    # "sinR":D
    .local v31, "sinR":D
    int-to-double v14, v3

    mul-double/2addr v14, v12

    add-double/2addr v14, v6

    .line 534
    .local v14, "y4T":D
    move-wide/from16 v33, v12

    move-wide/from16 v12, v28

    move-wide/from16 v28, v14

    .end local v14    # "y4T":D
    .local v12, "x2T":D
    .local v28, "y4T":D
    .local v33, "cosR":D
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 535
    .local v14, "maxX":D
    move-wide/from16 v35, v14

    .end local v14    # "maxX":D
    .local v35, "maxX":D
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 536
    .local v14, "minX":D
    move-wide/from16 v37, v1

    move-wide/from16 v1, v25

    move-wide/from16 v25, v4

    .end local v4    # "x1T":D
    .local v1, "y2T":D
    .local v25, "x1T":D
    .local v37, "x3T":D
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    move-wide/from16 v39, v10

    move-wide/from16 v10, v28

    .end local v28    # "y4T":D
    .local v10, "y4T":D
    .local v39, "x4T":D
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 537
    .local v3, "maxY":D
    move-wide/from16 v28, v12

    .end local v12    # "x2T":D
    .local v28, "x2T":D
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    .line 538
    .local v12, "minY":D
    sub-double v41, v35, v14

    move-wide/from16 v43, v1

    .end local v1    # "y2T":D
    .local v43, "y2T":D
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 539
    .end local v18    # "targetWidth":I
    .local v1, "targetWidth":I
    sub-double v41, v3, v12

    move v5, v1

    .end local v1    # "targetWidth":I
    .local v5, "targetWidth":I
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v10, v1

    .line 540
    .end local v3    # "maxY":D
    .end local v6    # "y1T":D
    .end local v8    # "y3T":D
    .end local v12    # "minY":D
    .end local v14    # "minX":D
    .end local v19    # "targetHeight":I
    .end local v25    # "x1T":D
    .end local v28    # "x2T":D
    .end local v35    # "maxX":D
    .end local v37    # "x3T":D
    .end local v39    # "x4T":D
    .end local v43    # "y2T":D
    .local v10, "targetHeight":I
    move v9, v5

    goto/16 :goto_1

    .line 541
    .end local v17    # "drawY":I
    .end local v20    # "drawWidth":I
    .end local v21    # "drawHeight":I
    .end local v22    # "onlyScaleDown":Z
    .end local v23    # "inHeight":I
    .end local v24    # "inWidth":I
    .end local v27    # "matrix":Landroid/graphics/Matrix;
    .end local v30    # "targetRotation":F
    .end local v31    # "sinR":D
    .end local v33    # "cosR":D
    .local v1, "inWidth":I
    .local v2, "inHeight":I
    .local v3, "onlyScaleDown":Z
    .local v5, "drawY":I
    .local v6, "drawWidth":I
    .restart local v7    # "drawHeight":I
    .local v8, "matrix":Landroid/graphics/Matrix;
    .local v9, "targetWidth":I
    .restart local v11    # "targetRotation":F
    .local v12, "cosR":D
    .local v14, "sinR":D
    :cond_2
    move/from16 v24, v1

    move/from16 v23, v2

    move/from16 v22, v3

    move/from16 v17, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v27, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v30, v11

    move-wide/from16 v33, v12

    move-wide/from16 v31, v14

    .end local v1    # "inWidth":I
    .end local v2    # "inHeight":I
    .end local v3    # "onlyScaleDown":Z
    .end local v5    # "drawY":I
    .end local v6    # "drawWidth":I
    .end local v7    # "drawHeight":I
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v9    # "targetWidth":I
    .end local v10    # "targetHeight":I
    .end local v11    # "targetRotation":F
    .end local v12    # "cosR":D
    .end local v14    # "sinR":D
    .restart local v17    # "drawY":I
    .restart local v18    # "targetWidth":I
    .restart local v19    # "targetHeight":I
    .restart local v20    # "drawWidth":I
    .restart local v21    # "drawHeight":I
    .restart local v22    # "onlyScaleDown":Z
    .restart local v23    # "inHeight":I
    .restart local v24    # "inWidth":I
    .restart local v27    # "matrix":Landroid/graphics/Matrix;
    .restart local v30    # "targetRotation":F
    .restart local v31    # "sinR":D
    .restart local v33    # "cosR":D
    move-object/from16 v1, v27

    move/from16 v2, v30

    .end local v27    # "matrix":Landroid/graphics/Matrix;
    .end local v30    # "targetRotation":F
    .local v1, "matrix":Landroid/graphics/Matrix;
    .local v2, "targetRotation":F
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 543
    const-wide/16 v3, 0x0

    .line 544
    .local v3, "x1T":D
    const-wide/16 v5, 0x0

    .line 545
    .local v5, "y1T":D
    iget v7, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v7, v7

    mul-double v7, v7, v33

    .line 546
    .local v7, "x2T":D
    iget v9, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v9, v9

    mul-double v9, v9, v31

    .line 547
    .local v9, "y2T":D
    iget v11, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v11, v11

    mul-double v11, v11, v33

    iget v13, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v13, v13

    mul-double v13, v13, v31

    sub-double/2addr v11, v13

    .line 548
    .local v11, "x3T":D
    iget v13, v0, Lcom/squareup/picasso/Request;->targetWidth:I

    int-to-double v13, v13

    mul-double v13, v13, v31

    iget v15, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "targetRotation":F
    .restart local v27    # "matrix":Landroid/graphics/Matrix;
    .restart local v30    # "targetRotation":F
    int-to-double v1, v15

    mul-double v1, v1, v33

    add-double/2addr v13, v1

    .line 549
    .local v13, "y3T":D
    iget v1, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    int-to-double v1, v1

    mul-double v1, v1, v31

    neg-double v1, v1

    .line 550
    .local v1, "x4T":D
    iget v15, v0, Lcom/squareup/picasso/Request;->targetHeight:I

    move-wide/from16 v25, v13

    .end local v13    # "y3T":D
    .local v25, "y3T":D
    int-to-double v13, v15

    mul-double v13, v13, v33

    .line 552
    .local v13, "y4T":D
    move-wide/from16 v28, v13

    .end local v13    # "y4T":D
    .local v28, "y4T":D
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 553
    .local v13, "maxX":D
    move-wide/from16 v35, v13

    .end local v13    # "maxX":D
    .restart local v35    # "maxX":D
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 554
    .local v13, "minX":D
    move-wide/from16 v37, v1

    .end local v1    # "x4T":D
    .local v37, "x4T":D
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    move-wide/from16 v39, v3

    move-wide/from16 v3, v25

    .end local v25    # "y3T":D
    .local v3, "y3T":D
    .local v39, "x1T":D
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    move-wide/from16 v25, v7

    move-wide/from16 v7, v28

    .end local v28    # "y4T":D
    .local v7, "y4T":D
    .local v25, "x2T":D
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 555
    .local v1, "maxY":D
    move-wide/from16 v28, v11

    .end local v11    # "x3T":D
    .local v28, "x3T":D
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 556
    .local v11, "minY":D
    sub-double v41, v35, v13

    move-wide/from16 v43, v3

    .end local v3    # "y3T":D
    .local v43, "y3T":D
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 557
    .end local v18    # "targetWidth":I
    .local v3, "targetWidth":I
    sub-double v41, v1, v11

    move-wide/from16 v45, v1

    .end local v1    # "maxY":D
    .local v45, "maxY":D
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    move v10, v1

    move v9, v3

    .end local v19    # "targetHeight":I
    .local v1, "targetHeight":I
    goto :goto_1

    .line 519
    .end local v13    # "minX":D
    .end local v16    # "drawX":I
    .end local v17    # "drawY":I
    .end local v20    # "drawWidth":I
    .end local v21    # "drawHeight":I
    .end local v22    # "onlyScaleDown":Z
    .end local v23    # "inHeight":I
    .end local v24    # "inWidth":I
    .end local v25    # "x2T":D
    .end local v27    # "matrix":Landroid/graphics/Matrix;
    .end local v28    # "x3T":D
    .end local v30    # "targetRotation":F
    .end local v31    # "sinR":D
    .end local v33    # "cosR":D
    .end local v35    # "maxX":D
    .end local v37    # "x4T":D
    .end local v39    # "x1T":D
    .end local v43    # "y3T":D
    .end local v45    # "maxY":D
    .local v1, "inWidth":I
    .local v2, "inHeight":I
    .local v3, "onlyScaleDown":Z
    .local v4, "drawX":I
    .local v5, "drawY":I
    .restart local v6    # "drawWidth":I
    .local v7, "drawHeight":I
    .restart local v8    # "matrix":Landroid/graphics/Matrix;
    .local v9, "targetWidth":I
    .restart local v10    # "targetHeight":I
    .local v11, "targetRotation":F
    :cond_3
    move/from16 v24, v1

    move/from16 v23, v2

    move/from16 v22, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v27, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v30, v11

    .line 563
    .end local v1    # "inWidth":I
    .end local v2    # "inHeight":I
    .end local v3    # "onlyScaleDown":Z
    .end local v4    # "drawX":I
    .end local v5    # "drawY":I
    .end local v6    # "drawWidth":I
    .end local v7    # "drawHeight":I
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "targetRotation":F
    .restart local v16    # "drawX":I
    .restart local v17    # "drawY":I
    .restart local v20    # "drawWidth":I
    .restart local v21    # "drawHeight":I
    .restart local v22    # "onlyScaleDown":Z
    .restart local v23    # "inHeight":I
    .restart local v24    # "inWidth":I
    .restart local v27    # "matrix":Landroid/graphics/Matrix;
    .restart local v30    # "targetRotation":F
    :goto_1
    if-eqz p2, :cond_7

    .line 564
    invoke-static/range {p2 .. p2}, Lcom/squareup/picasso/BitmapHunter;->getExifRotation(I)I

    move-result v1

    .line 565
    .local v1, "exifRotation":I
    invoke-static/range {p2 .. p2}, Lcom/squareup/picasso/BitmapHunter;->getExifTranslation(I)I

    move-result v2

    .line 566
    .local v2, "exifTranslation":I
    if-eqz v1, :cond_5

    .line 567
    int-to-float v3, v1

    move-object/from16 v4, v27

    .end local v27    # "matrix":Landroid/graphics/Matrix;
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 568
    const/16 v3, 0x5a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_6

    .line 570
    :cond_4
    move v3, v10

    .line 571
    .local v3, "tmpHeight":I
    move v5, v9

    .line 572
    .end local v10    # "targetHeight":I
    .local v5, "targetHeight":I
    move v6, v3

    move v10, v5

    move v9, v6

    .end local v9    # "targetWidth":I
    .local v6, "targetWidth":I
    goto :goto_2

    .line 566
    .end local v3    # "tmpHeight":I
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    .end local v5    # "targetHeight":I
    .end local v6    # "targetWidth":I
    .restart local v9    # "targetWidth":I
    .restart local v10    # "targetHeight":I
    .restart local v27    # "matrix":Landroid/graphics/Matrix;
    :cond_5
    move-object/from16 v4, v27

    .line 575
    .end local v27    # "matrix":Landroid/graphics/Matrix;
    .restart local v4    # "matrix":Landroid/graphics/Matrix;
    :cond_6
    :goto_2
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    .line 576
    int-to-float v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_3

    .line 563
    .end local v1    # "exifRotation":I
    .end local v2    # "exifTranslation":I
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    .restart local v27    # "matrix":Landroid/graphics/Matrix;
    :cond_7
    move-object/from16 v4, v27

    .line 580
    .end local v27    # "matrix":Landroid/graphics/Matrix;
    .restart local v4    # "matrix":Landroid/graphics/Matrix;
    :cond_8
    :goto_3
    iget-boolean v1, v0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-eqz v1, :cond_12

    .line 582
    if-eqz v9, :cond_9

    int-to-float v1, v9

    move/from16 v2, v24

    .end local v24    # "inWidth":I
    .local v2, "inWidth":I
    int-to-float v3, v2

    div-float/2addr v1, v3

    move/from16 v3, v23

    goto :goto_4

    .end local v2    # "inWidth":I
    .restart local v24    # "inWidth":I
    :cond_9
    move/from16 v2, v24

    .end local v24    # "inWidth":I
    .restart local v2    # "inWidth":I
    int-to-float v1, v10

    move/from16 v3, v23

    .end local v23    # "inHeight":I
    .local v3, "inHeight":I
    int-to-float v5, v3

    div-float/2addr v1, v5

    .line 584
    .local v1, "widthRatio":F
    :goto_4
    if-eqz v10, :cond_a

    int-to-float v5, v10

    int-to-float v6, v3

    goto :goto_5

    :cond_a
    int-to-float v5, v9

    int-to-float v6, v2

    :goto_5
    div-float/2addr v5, v6

    .line 587
    .local v5, "heightRatio":F
    cmpl-float v6, v1, v5

    if-lez v6, :cond_d

    .line 588
    int-to-float v6, v3

    div-float v7, v5, v1

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 589
    .local v6, "newSize":I
    iget v7, v0, Lcom/squareup/picasso/Request;->centerCropGravity:I

    const/16 v8, 0x30

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_b

    .line 590
    const/4 v7, 0x0

    .end local v17    # "drawY":I
    .local v7, "drawY":I
    goto :goto_6

    .line 591
    .end local v7    # "drawY":I
    .restart local v17    # "drawY":I
    :cond_b
    iget v7, v0, Lcom/squareup/picasso/Request;->centerCropGravity:I

    const/16 v8, 0x50

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_c

    .line 592
    sub-int v7, v3, v6

    .end local v17    # "drawY":I
    .restart local v7    # "drawY":I
    goto :goto_6

    .line 594
    .end local v7    # "drawY":I
    .restart local v17    # "drawY":I
    :cond_c
    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    .line 596
    .end local v17    # "drawY":I
    .restart local v7    # "drawY":I
    :goto_6
    move v8, v6

    .line 597
    .end local v21    # "drawHeight":I
    .local v8, "drawHeight":I
    move v11, v1

    .line 598
    .local v11, "scaleX":F
    int-to-float v12, v10

    int-to-float v13, v8

    div-float/2addr v12, v13

    .line 599
    .end local v6    # "newSize":I
    .local v12, "scaleY":F
    move/from16 v17, v7

    move v7, v8

    move/from16 v6, v20

    goto :goto_8

    .end local v7    # "drawY":I
    .end local v8    # "drawHeight":I
    .end local v11    # "scaleX":F
    .end local v12    # "scaleY":F
    .restart local v17    # "drawY":I
    .restart local v21    # "drawHeight":I
    :cond_d
    cmpg-float v6, v1, v5

    if-gez v6, :cond_10

    .line 600
    int-to-float v6, v2

    div-float v7, v1, v5

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 601
    .restart local v6    # "newSize":I
    iget v7, v0, Lcom/squareup/picasso/Request;->centerCropGravity:I

    const/4 v8, 0x3

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_e

    .line 602
    const/4 v7, 0x0

    .end local v16    # "drawX":I
    .local v7, "drawX":I
    goto :goto_7

    .line 603
    .end local v7    # "drawX":I
    .restart local v16    # "drawX":I
    :cond_e
    iget v7, v0, Lcom/squareup/picasso/Request;->centerCropGravity:I

    const/4 v8, 0x5

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_f

    .line 604
    sub-int v7, v2, v6

    .end local v16    # "drawX":I
    .restart local v7    # "drawX":I
    goto :goto_7

    .line 606
    .end local v7    # "drawX":I
    .restart local v16    # "drawX":I
    :cond_f
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    .line 608
    .end local v16    # "drawX":I
    .restart local v7    # "drawX":I
    :goto_7
    move v8, v6

    .line 609
    .end local v20    # "drawWidth":I
    .local v8, "drawWidth":I
    int-to-float v11, v9

    int-to-float v12, v8

    div-float/2addr v11, v12

    .line 610
    .restart local v11    # "scaleX":F
    move v12, v5

    .line 611
    .end local v6    # "newSize":I
    .restart local v12    # "scaleY":F
    move/from16 v16, v7

    move/from16 v7, v21

    goto :goto_8

    .line 612
    .end local v7    # "drawX":I
    .end local v8    # "drawWidth":I
    .end local v11    # "scaleX":F
    .end local v12    # "scaleY":F
    .restart local v16    # "drawX":I
    .restart local v20    # "drawWidth":I
    :cond_10
    const/4 v6, 0x0

    .line 613
    .end local v16    # "drawX":I
    .local v6, "drawX":I
    move v7, v2

    .line 614
    .end local v20    # "drawWidth":I
    .local v7, "drawWidth":I
    move v12, v5

    .restart local v12    # "scaleY":F
    move v11, v5

    move/from16 v16, v6

    move v6, v7

    move/from16 v7, v21

    .line 616
    .end local v21    # "drawHeight":I
    .local v6, "drawWidth":I
    .local v7, "drawHeight":I
    .restart local v11    # "scaleX":F
    .restart local v16    # "drawX":I
    :goto_8
    move/from16 v8, v22

    .end local v22    # "onlyScaleDown":Z
    .local v8, "onlyScaleDown":Z
    invoke-static {v8, v2, v3, v9, v10}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 617
    invoke-virtual {v4, v11, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 619
    .end local v1    # "widthRatio":F
    .end local v5    # "heightRatio":F
    .end local v11    # "scaleX":F
    .end local v12    # "scaleY":F
    :cond_11
    move/from16 v5, v17

    goto :goto_11

    .end local v2    # "inWidth":I
    .end local v3    # "inHeight":I
    .end local v6    # "drawWidth":I
    .end local v7    # "drawHeight":I
    .end local v8    # "onlyScaleDown":Z
    .restart local v20    # "drawWidth":I
    .restart local v21    # "drawHeight":I
    .restart local v22    # "onlyScaleDown":Z
    .restart local v23    # "inHeight":I
    .restart local v24    # "inWidth":I
    :cond_12
    move/from16 v8, v22

    move/from16 v3, v23

    move/from16 v2, v24

    .end local v22    # "onlyScaleDown":Z
    .end local v23    # "inHeight":I
    .end local v24    # "inWidth":I
    .restart local v2    # "inWidth":I
    .restart local v3    # "inHeight":I
    .restart local v8    # "onlyScaleDown":Z
    iget-boolean v1, v0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-eqz v1, :cond_16

    .line 621
    if-eqz v9, :cond_13

    int-to-float v1, v9

    int-to-float v5, v2

    goto :goto_9

    :cond_13
    int-to-float v1, v10

    int-to-float v5, v3

    :goto_9
    div-float/2addr v1, v5

    .line 623
    .restart local v1    # "widthRatio":F
    if-eqz v10, :cond_14

    int-to-float v5, v10

    int-to-float v6, v3

    goto :goto_a

    :cond_14
    int-to-float v5, v9

    int-to-float v6, v2

    :goto_a
    div-float/2addr v5, v6

    .line 625
    .restart local v5    # "heightRatio":F
    cmpg-float v6, v1, v5

    if-gez v6, :cond_15

    move v6, v1

    goto :goto_b

    :cond_15
    move v6, v5

    .line 626
    .local v6, "scale":F
    :goto_b
    invoke-static {v8, v2, v3, v9, v10}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 627
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_c

    .line 629
    .end local v1    # "widthRatio":F
    .end local v5    # "heightRatio":F
    .end local v6    # "scale":F
    :cond_16
    if-nez v9, :cond_18

    if-eqz v10, :cond_17

    goto :goto_d

    :cond_17
    :goto_c
    goto :goto_10

    :cond_18
    :goto_d
    if-ne v9, v2, :cond_19

    if-eq v10, v3, :cond_17

    .line 634
    :cond_19
    if-eqz v9, :cond_1a

    int-to-float v1, v9

    int-to-float v5, v2

    goto :goto_e

    :cond_1a
    int-to-float v1, v10

    int-to-float v5, v3

    :goto_e
    div-float/2addr v1, v5

    .line 636
    .local v1, "sx":F
    if-eqz v10, :cond_1b

    int-to-float v5, v10

    int-to-float v6, v3

    goto :goto_f

    :cond_1b
    int-to-float v5, v9

    int-to-float v6, v2

    :goto_f
    div-float/2addr v5, v6

    .line 638
    .local v5, "sy":F
    invoke-static {v8, v2, v3, v9, v10}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 639
    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 644
    .end local v9    # "targetWidth":I
    .end local v10    # "targetHeight":I
    .end local v16    # "drawX":I
    .end local v17    # "drawY":I
    .end local v20    # "drawWidth":I
    .end local v21    # "drawHeight":I
    .end local v30    # "targetRotation":F
    .local v1, "inWidth":I
    .local v2, "inHeight":I
    .local v3, "onlyScaleDown":Z
    .local v4, "drawX":I
    .local v5, "drawY":I
    .local v6, "drawWidth":I
    .restart local v7    # "drawHeight":I
    .local v8, "matrix":Landroid/graphics/Matrix;
    :cond_1c
    :goto_10
    move/from16 v5, v17

    move/from16 v6, v20

    move/from16 v7, v21

    .end local v1    # "inWidth":I
    .local v2, "inWidth":I
    .local v3, "inHeight":I
    .local v4, "matrix":Landroid/graphics/Matrix;
    .local v8, "onlyScaleDown":Z
    .restart local v16    # "drawX":I
    :goto_11
    const/4 v15, 0x1

    .line 645
    move-object/from16 v9, p1

    move/from16 v10, v16

    move v11, v5

    move v12, v6

    move v13, v7

    move-object v14, v4

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 646
    .local v1, "newResult":Landroid/graphics/Bitmap;
    if-eq v1, v9, :cond_1d

    .line 647
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 648
    move-object v9, v1

    .line 651
    .end local p1    # "result":Landroid/graphics/Bitmap;
    .local v9, "result":Landroid/graphics/Bitmap;
    :cond_1d
    return-object v9
.end method

.method static updateThreadName(Lcom/squareup/picasso/Request;)V
    .locals 5
    .param p0, "data"    # Lcom/squareup/picasso/Request;

    .line 414
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->getName()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 417
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 418
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 421
    return-void
.end method


# virtual methods
.method attach(Lcom/squareup/picasso/Action;)V
    .locals 7
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .line 270
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 271
    .local v0, "loggingEnabled":Z
    iget-object v1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    .line 273
    .local v1, "request":Lcom/squareup/picasso/Request;
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_3

    .line 274
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 275
    if-eqz v0, :cond_2

    .line 276
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to empty hunter"

    invoke-static {v5, v4, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_2
    :goto_1
    return-void

    .line 285
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-nez v2, :cond_4

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 289
    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    if-eqz v0, :cond_5

    .line 292
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v2

    .line 296
    .local v2, "actionPriority":Lcom/squareup/picasso/Picasso$Priority;
    invoke-virtual {v2}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v4}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 297
    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 299
    :cond_6
    return-void
.end method

.method cancel()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 350
    :goto_0
    return v1
.end method

.method detach(Lcom/squareup/picasso/Action;)V
    .locals 5
    .param p1, "action"    # Lcom/squareup/picasso/Action;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "detached":Z
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-ne v1, p1, :cond_0

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 305
    const/4 v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 307
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 312
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v1, v2, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/squareup/picasso/BitmapHunter;->computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_3

    .line 317
    iget-object v1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "from "

    invoke-static {p0, v2}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hunter"

    const-string v4, "removed"

    invoke-static {v3, v4, v1, v2}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_3
    return-void
.end method

.method getAction()Lcom/squareup/picasso/Action;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    return-object v0
.end method

.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    return-object v0
.end method

.method getData()Lcom/squareup/picasso/Request;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    return-object v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method getMemoryPolicy()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    return v0
.end method

.method getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method getResult()Landroid/graphics/Bitmap;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method hunt()Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    invoke-static {v1}, Lcom/squareup/picasso/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_1

    .line 209
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 210
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 211
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    return-object v0

    .line 218
    :cond_1
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    iget v1, v1, Lcom/squareup/picasso/NetworkPolicy;->index:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    :goto_0
    iput v1, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 219
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2, v3, v1}, Lcom/squareup/picasso/RequestHandler;->load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;

    move-result-object v1

    .line 220
    .local v1, "result":Lcom/squareup/picasso/RequestHandler$Result;
    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 222
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getExifOrientation()I

    move-result v2

    iput v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    .line 223
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    if-nez v0, :cond_3

    .line 227
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getSource()Lokio/Source;

    move-result-object v2

    .line 229
    .local v2, "source":Lokio/Source;
    :try_start_0
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v2, v3}, Lcom/squareup/picasso/BitmapHunter;->decodeStream(Lokio/Source;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 233
    :try_start_1
    invoke-interface {v2}, Lokio/Source;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    goto :goto_2

    .line 234
    :catch_0
    move-exception v3

    .line 236
    goto :goto_2

    .line 231
    :catchall_0
    move-exception v3

    .line 233
    :try_start_2
    invoke-interface {v2}, Lokio/Source;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 235
    goto :goto_1

    .line 234
    :catch_1
    move-exception v4

    .line 235
    :goto_1
    throw v3

    .line 240
    .end local v2    # "source":Lokio/Source;
    :cond_3
    :goto_2
    if-eqz v0, :cond_9

    .line 241
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_4

    .line 242
    const-string v2, "Hunter"

    const-string v3, "decoded"

    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    .line 245
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->needsTransformation()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    if-eqz v2, :cond_9

    .line 246
    :cond_5
    sget-object v2, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    :try_start_3
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    if-eqz v3, :cond_7

    .line 248
    :cond_6
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v4, p0, Lcom/squareup/picasso/BitmapHunter;->exifOrientation:I

    invoke-static {v3, v0, v4}, Lcom/squareup/picasso/BitmapHunter;->transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 249
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v3, :cond_7

    .line 250
    const-string v3, "Hunter"

    const-string v4, "transformed"

    iget-object v5, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v5}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_7
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v3}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 254
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget-object v3, v3, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/squareup/picasso/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 255
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v3, :cond_8

    .line 256
    const-string v3, "Hunter"

    const-string v4, "transformed"

    iget-object v5, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v5}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from custom transformations"

    invoke-static {v3, v4, v5, v6}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    if-eqz v0, :cond_9

    .line 261
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 259
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 266
    :cond_9
    :goto_3
    return-object v0
.end method

.method isCancelled()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    .line 169
    const-string v0, "Picasso-Idle"

    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v1}, Lcom/squareup/picasso/BitmapHunter;->updateThreadName(Lcom/squareup/picasso/Request;)V

    .line 171
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "Hunter"

    const-string v2, "executing"

    invoke-static {p0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 177
    if-nez v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_0
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 197
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 190
    :catch_1
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 192
    .local v2, "writer":Ljava/io/StringWriter;
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v3}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    .line 193
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 194
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v3, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "writer":Ljava/io/StringWriter;
    goto :goto_0

    .line 187
    :catch_2
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 189
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 200
    goto :goto_1

    .line 182
    :catch_3
    move-exception v1

    .line 183
    .local v1, "e":Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;
    :try_start_2
    iget v2, v1, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->networkPolicy:I

    invoke-static {v2}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;->code:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_3

    .line 184
    :cond_2
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Lcom/squareup/picasso/NetworkRequestHandler$ResponseException;
    goto :goto_0

    .line 201
    :goto_1
    return-void

    .line 199
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 3
    .param p1, "airplaneMode"    # Z
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .line 361
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 362
    .local v0, "hasRetries":Z
    :goto_0
    if-nez v0, :cond_1

    .line 363
    return v2

    .line 365
    :cond_1
    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 366
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v1, p1, p2}, Lcom/squareup/picasso/RequestHandler;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result v1

    return v1
.end method

.method supportsReplay()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestHandler;->supportsReplay()Z

    move-result v0

    return v0
.end method
