.class public final Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/BitArray;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/BitArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedCapacity"
.end annotation


# instance fields
.field data:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    return-void
.end method

.method private static checkInput(I)I
    .locals 5
    .param p0, "index"    # I

    .line 71
    if-ltz p0, :cond_0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    .line 74
    return p0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "input must be between 0 and 63: %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    .line 44
    return-void
.end method

.method public get(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 55
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->checkInput(I)I

    move-result v2

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(I)V
    .locals 5
    .param p1, "index"    # I

    .line 47
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->checkInput(I)I

    move-result v2

    const-wide/16 v3, 0x1

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    .line 48
    return-void
.end method

.method public shiftLeft(I)V
    .locals 3
    .param p1, "count"    # I

    .line 59
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->checkInput(I)I

    move-result v2

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVariableCapacity()Lcom/koushikdutta/async/http/spdy/BitArray;
    .locals 2

    .line 67
    new-instance v0, Lcom/koushikdutta/async/http/spdy/BitArray$VariableCapacity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/spdy/BitArray$VariableCapacity;-><init>(Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;Lcom/koushikdutta/async/http/spdy/BitArray$1;)V

    return-object v0
.end method

.method public toggle(I)V
    .locals 5
    .param p1, "index"    # I

    .line 51
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->checkInput(I)I

    move-result v2

    const-wide/16 v3, 0x1

    shl-long v2, v3, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    .line 52
    return-void
.end method
