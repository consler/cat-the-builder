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

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    return-void
.end method

.method private static checkInput(I)I
    .locals 4

    if-ltz p0, :cond_0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    return p0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "input must be between 0 and 63: %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    return-void
.end method

.method public get(I)Z
    .locals 4

    .line 55
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->checkInput(I)I

    move-result p1

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(I)V
    .locals 4

    .line 47
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    const-wide/16 v2, 0x1

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->checkInput(I)I

    move-result p1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    return-void
.end method

.method public shiftLeft(I)V
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->checkInput(I)I

    move-result p1

    shl-long/2addr v0, p1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

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
    .locals 4

    .line 51
    iget-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    const-wide/16 v2, 0x1

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->checkInput(I)I

    move-result p1

    shl-long/2addr v2, p1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/spdy/BitArray$FixedCapacity;->data:J

    return-void
.end method
