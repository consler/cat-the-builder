.class Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter$2;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    .line 486
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter$2;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter$2;->this$0:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware$CachedBodyEmitter;->close()V

    .line 490
    return-void
.end method
