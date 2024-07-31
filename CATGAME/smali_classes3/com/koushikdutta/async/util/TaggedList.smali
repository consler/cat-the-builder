.class public Lcom/koushikdutta/async/util/TaggedList;
.super Ljava/util/ArrayList;
.source "TaggedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    .local p0, "this":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized tag()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/TaggedList;->tag:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 9
    .end local p0    # "this":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tag(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    .local p1, "tag":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 13
    :try_start_0
    iput-object p1, p0, Lcom/koushikdutta/async/util/TaggedList;->tag:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    .line 12
    .end local p0    # "this":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    .end local p1    # "tag":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tagNull(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .local p0, "this":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    .local p1, "tag":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/util/TaggedList;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 18
    iput-object p1, p0, Lcom/koushikdutta/async/util/TaggedList;->tag:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .end local p0    # "this":Lcom/koushikdutta/async/util/TaggedList;, "Lcom/koushikdutta/async/util/TaggedList<TT;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 16
    .end local p1    # "tag":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
