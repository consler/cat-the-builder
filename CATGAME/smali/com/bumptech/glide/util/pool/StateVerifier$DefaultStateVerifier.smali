.class Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;
.super Lcom/bumptech/glide/util/pool/StateVerifier;
.source "StateVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/StateVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultStateVerifier"
.end annotation


# instance fields
.field private volatile isReleased:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/pool/StateVerifier;-><init>(Lcom/bumptech/glide/util/pool/StateVerifier$1;)V

    return-void
.end method


# virtual methods
.method public setRecycled(Z)V
    .locals 0
    .param p1, "isRecycled"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->isReleased:Z

    .line 47
    return-void
.end method

.method public throwIfRecycled()V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->isReleased:Z

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
