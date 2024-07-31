.class final Lcom/squareup/moshi/Moshi$LookupChain;
.super Ljava/lang/Object;
.source "Moshi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/Moshi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LookupChain"
.end annotation


# instance fields
.field final callLookups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/moshi/Moshi$Lookup<",
            "*>;>;"
        }
    .end annotation
.end field

.field exceptionAnnotated:Z

.field final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/squareup/moshi/Moshi$Lookup<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/squareup/moshi/Moshi;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/Moshi;)V
    .locals 1
    .param p1, "this$0"    # Lcom/squareup/moshi/Moshi;

    .line 268
    iput-object p1, p0, Lcom/squareup/moshi/Moshi$LookupChain;->this$0:Lcom/squareup/moshi/Moshi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->callLookups:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method adapterFound(Lcom/squareup/moshi/JsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 298
    .local p1, "result":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<TT;>;"
    iget-object v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/Moshi$Lookup;

    .line 299
    .local v0, "currentLookup":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<TT;>;"
    iput-object p1, v0, Lcom/squareup/moshi/Moshi$Lookup;->adapter:Lcom/squareup/moshi/JsonAdapter;

    .line 300
    return-void
.end method

.method exceptionWithLookupStack(Ljava/lang/IllegalArgumentException;)Ljava/lang/IllegalArgumentException;
    .locals 5
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .line 329
    iget-boolean v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->exceptionAnnotated:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->exceptionAnnotated:Z

    .line 332
    iget-object v1, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    .line 333
    .local v1, "size":I
    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/Moshi$Lookup;

    iget-object v0, v0, Lcom/squareup/moshi/Moshi$Lookup;->fieldName:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object p1

    .line 335
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "errorMessageBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/moshi/Moshi$Lookup<*>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 337
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/moshi/Moshi$Lookup;

    .line 338
    .local v3, "lookup":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<*>;"
    nop

    .line 339
    const-string v4, "\nfor "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/squareup/moshi/Moshi$Lookup;->type:Ljava/lang/reflect/Type;

    .line 340
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v4, v3, Lcom/squareup/moshi/Moshi$Lookup;->fieldName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 342
    const/16 v4, 0x20

    .line 343
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/squareup/moshi/Moshi$Lookup;->fieldName:Ljava/lang/String;

    .line 344
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .end local v3    # "lookup":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<*>;"
    :cond_2
    goto :goto_0

    .line 348
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/moshi/Moshi$Lookup<*>;>;"
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method pop(Z)V
    .locals 7
    .param p1, "success"    # Z

    .line 308
    iget-object v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->this$0:Lcom/squareup/moshi/Moshi;

    invoke-static {v0}, Lcom/squareup/moshi/Moshi;->access$000(Lcom/squareup/moshi/Moshi;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 313
    if-eqz p1, :cond_3

    .line 314
    iget-object v0, p0, Lcom/squareup/moshi/Moshi$LookupChain;->this$0:Lcom/squareup/moshi/Moshi;

    invoke-static {v0}, Lcom/squareup/moshi/Moshi;->access$100(Lcom/squareup/moshi/Moshi;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/squareup/moshi/Moshi$LookupChain;->callLookups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 316
    iget-object v3, p0, Lcom/squareup/moshi/Moshi$LookupChain;->callLookups:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/moshi/Moshi$Lookup;

    .line 317
    .local v3, "lookup":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<*>;"
    iget-object v4, p0, Lcom/squareup/moshi/Moshi$LookupChain;->this$0:Lcom/squareup/moshi/Moshi;

    invoke-static {v4}, Lcom/squareup/moshi/Moshi;->access$100(Lcom/squareup/moshi/Moshi;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v3, Lcom/squareup/moshi/Moshi$Lookup;->cacheKey:Ljava/lang/Object;

    iget-object v6, v3, Lcom/squareup/moshi/Moshi$Lookup;->adapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/moshi/JsonAdapter;

    .line 318
    .local v4, "replaced":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<*>;"
    if-eqz v4, :cond_1

    .line 319
    iput-object v4, v3, Lcom/squareup/moshi/Moshi$Lookup;->adapter:Lcom/squareup/moshi/JsonAdapter;

    .line 320
    iget-object v5, p0, Lcom/squareup/moshi/Moshi$LookupChain;->this$0:Lcom/squareup/moshi/Moshi;

    invoke-static {v5}, Lcom/squareup/moshi/Moshi;->access$100(Lcom/squareup/moshi/Moshi;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v3, Lcom/squareup/moshi/Moshi$Lookup;->cacheKey:Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .end local v3    # "lookup":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<*>;"
    .end local v4    # "replaced":Lcom/squareup/moshi/JsonAdapter;, "Lcom/squareup/moshi/JsonAdapter<*>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 325
    :cond_3
    :goto_1
    return-void
.end method

.method push(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/moshi/JsonAdapter;
    .locals 5
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "cacheKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/squareup/moshi/Moshi$LookupChain;->callLookups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 281
    iget-object v2, p0, Lcom/squareup/moshi/Moshi$LookupChain;->callLookups:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/moshi/Moshi$Lookup;

    .line 282
    .local v2, "lookup":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<*>;"
    iget-object v3, v2, Lcom/squareup/moshi/Moshi$Lookup;->cacheKey:Ljava/lang/Object;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    move-object v3, v2

    .line 284
    .local v3, "hit":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<TT;>;"
    iget-object v4, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v4, v3, Lcom/squareup/moshi/Moshi$Lookup;->adapter:Lcom/squareup/moshi/JsonAdapter;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/squareup/moshi/Moshi$Lookup;->adapter:Lcom/squareup/moshi/JsonAdapter;

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    return-object v4

    .line 280
    .end local v2    # "lookup":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<*>;"
    .end local v3    # "hit":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<TT;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    new-instance v0, Lcom/squareup/moshi/Moshi$Lookup;

    invoke-direct {v0, p1, p2, p3}, Lcom/squareup/moshi/Moshi$Lookup;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    .local v0, "lookup":Lcom/squareup/moshi/Moshi$Lookup;, "Lcom/squareup/moshi/Moshi$Lookup<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/squareup/moshi/Moshi$LookupChain;->callLookups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/squareup/moshi/Moshi$LookupChain;->stack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 293
    const/4 v1, 0x0

    return-object v1
.end method
