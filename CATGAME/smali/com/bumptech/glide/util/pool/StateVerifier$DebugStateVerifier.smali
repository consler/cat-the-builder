.class Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;
.super Lcom/bumptech/glide/util/pool/StateVerifier;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/StateVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugStateVerifier"
.end annotation


# instance fields
.field private volatile recycledAtStackTraceException:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/pool/StateVerifier;-><init>(Lcom/bumptech/glide/util/pool/StateVerifier$1;)V

    return-void
.end method


# virtual methods
.method setRecycled(Z)V
    .locals 2
    .param p1, "isRecycled"    # Z

    .line 66
    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;->recycledAtStackTraceException:Ljava/lang/RuntimeException;

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;->recycledAtStackTraceException:Ljava/lang/RuntimeException;

    .line 71
    :goto_0
    return-void
.end method

.method public throwIfRecycled()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;->recycledAtStackTraceException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DebugStateVerifier;->recycledAtStackTraceException:Ljava/lang/RuntimeException;

    const-string v2, "Already released"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
