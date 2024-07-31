.class final Lcom/google/crypto/tink/subtle/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;,
        Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$XYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    }
.end annotation


# static fields
.field private static final CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

.field static final GROUP_ORDER:[B

.field private static final NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

.field public static final PUBLIC_KEY_LEN:I = 0x20

.field public static final SECRET_KEY_LEN:I = 0x20

.field public static final SIGNATURE_LEN:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    const/16 v1, 0xa

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-direct {v0, v2, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>([J[J[J)V

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    .line 56
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    new-array v3, v1, [J

    fill-array-data v3, :array_3

    new-array v4, v1, [J

    fill-array-data v4, :array_4

    new-array v5, v1, [J

    fill-array-data v5, :array_5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>([J[J[J)V

    new-array v1, v1, [J

    fill-array-data v1, :array_6

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;[J)V

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    .line 1557
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->GROUP_ORDER:[B

    return-void

    :array_0
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 1
        -0x13t
        -0x2dt
        -0xbt
        0x5ct
        0x1at
        0x63t
        0x12t
        0x58t
        -0x2at
        -0x64t
        -0x9t
        -0x5et
        -0x22t
        -0x7t
        -0x22t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([J)I
    .locals 1
    .param p0, "x0"    # [J

    .line 45
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->getLsb([J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([J[J)V
    .locals 0
    .param p0, "x0"    # [J
    .param p1, "x1"    # [J

    .line 45
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->pow2252m3([J[J)V

    return-void
.end method

.method static synthetic access$200([J)Z
    .locals 1
    .param p0, "x0"    # [J

    .line 45
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->isNonZeroVarTime([J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300([J[J)V
    .locals 0
    .param p0, "x0"    # [J
    .param p1, "x1"    # [J

    .line 45
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->neg([J[J)V

    return-void
.end method

.method private static add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V
    .locals 4
    .param p0, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .param p1, "extended"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .param p2, "cached"    # Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "extended",
            "cached"
        }
    .end annotation

    .line 385
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 388
    .local v0, "t":[J
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 391
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 394
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 397
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 400
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->t:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 403
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->multByZ([J[J)V

    .line 406
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 409
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 412
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 415
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 418
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 419
    return-void
.end method

.method private static doubleScalarMultVarTime([BLcom/google/crypto/tink/subtle/Ed25519$XYZT;[B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .locals 10
    .param p0, "a"    # [B
    .param p1, "pointA"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "pointA",
            "b"
        }
    .end annotation

    .line 694
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    .line 695
    .local v0, "pointAArray":[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    invoke-direct {v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 696
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>()V

    .line 697
    .local v1, "t":Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    invoke-static {v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZT(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    .line 698
    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v2, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 699
    .local v2, "doubleA":Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 700
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v0, v4

    invoke-static {v1, v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 701
    new-instance v4, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v5, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    invoke-direct {v4, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    aput-object v4, v0, v3

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    .end local v3    # "i":I
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->slide([B)[B

    move-result-object v3

    .line 705
    .local v3, "aSlide":[B
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Ed25519;->slide([B)[B

    move-result-object v4

    .line 706
    .local v4, "bSlide":[B
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    sget-object v6, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {v5, v6}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    move-object v1, v5

    .line 707
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>()V

    .line 708
    .local v5, "u":Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    const/16 v6, 0xff

    .line 709
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 710
    aget-byte v7, v3, v6

    if-nez v7, :cond_2

    aget-byte v7, v4, v6

    if-eqz v7, :cond_1

    .line 711
    goto :goto_2

    .line 709
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 714
    :cond_2
    :goto_2
    if-ltz v6, :cond_7

    .line 715
    new-instance v7, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v7, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 716
    aget-byte v7, v3, v6

    if-lez v7, :cond_3

    .line 717
    invoke-static {v5, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    aget-byte v8, v3, v6

    div-int/lit8 v8, v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v1, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    goto :goto_3

    .line 718
    :cond_3
    aget-byte v7, v3, v6

    if-gez v7, :cond_4

    .line 719
    invoke-static {v5, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    aget-byte v8, v3, v6

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v1, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 721
    :cond_4
    :goto_3
    aget-byte v7, v4, v6

    if-lez v7, :cond_5

    .line 722
    invoke-static {v5, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    sget-object v8, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-byte v9, v4, v6

    div-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v1, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    goto :goto_4

    .line 723
    :cond_5
    aget-byte v7, v4, v6

    if-gez v7, :cond_6

    .line 724
    invoke-static {v5, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    sget-object v8, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-byte v9, v4, v6

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v1, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 714
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 728
    :cond_7
    new-instance v7, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v7, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    return-object v7
.end method

.method private static doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V
    .locals 4
    .param p0, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .param p1, "p"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "p"
        }
    .end annotation

    .line 479
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 482
    .local v0, "t0":[J
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 485
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 488
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 491
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 494
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 497
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 500
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 503
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 506
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 509
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 510
    return-void
.end method

.method private static doubleXYZT(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V
    .locals 1
    .param p0, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .param p1, "p"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "p"
        }
    .end annotation

    .line 516
    iget-object v0, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 517
    return-void
.end method

.method private static eq(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 526
    xor-int v0, p0, p1

    not-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 527
    .local v0, "r":I
    shl-int/lit8 v1, v0, 0x4

    and-int/2addr v0, v1

    .line 528
    shl-int/lit8 v1, v0, 0x2

    and-int/2addr v0, v1

    .line 529
    shl-int/lit8 v1, v0, 0x1

    and-int/2addr v0, v1

    .line 530
    shr-int/lit8 v1, v0, 0x7

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method static getHashedScalar([B)[B
    .locals 4
    .param p0, "privateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1508
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "SHA-512"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 1509
    .local v0, "digest":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1510
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 1513
    .local v2, "h":[B
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xf8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1515
    const/16 v1, 0x1f

    aget-byte v3, v2, v1

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1517
    aget-byte v3, v2, v1

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1518
    return-object v2
.end method

.method private static getLsb([J)I
    .locals 2
    .param p0, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 753
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isNonZeroVarTime([J)Z
    .locals 7
    .param p0, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 737
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 738
    .local v0, "inCopy":[J
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 740
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v2

    .line 741
    .local v2, "bytes":[B
    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-byte v6, v2, v5

    .line 742
    .local v6, "b":B
    if-eqz v6, :cond_0

    .line 743
    return v1

    .line 741
    .end local v6    # "b":B
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 746
    :cond_1
    return v3
.end method

.method private static isSmallerThanGroupOrder([B)Z
    .locals 4
    .param p0, "s"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1572
    const/16 v0, 0x1f

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1574
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 1575
    .local v2, "a":I
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519;->GROUP_ORDER:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    .line 1576
    .local v3, "b":I
    if-eq v2, v3, :cond_1

    .line 1577
    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1572
    .end local v2    # "a":I
    .end local v3    # "b":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1580
    .end local v0    # "j":I
    :cond_2
    return v1
.end method

.method private static load3([BI)J
    .locals 5
    .param p0, "in"    # [B
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "idx"
        }
    .end annotation

    .line 872
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 873
    .local v0, "result":J
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 874
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 875
    return-wide v0
.end method

.method private static load4([BI)J
    .locals 5
    .param p0, "in"    # [B
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "idx"
        }
    .end annotation

    .line 882
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v0

    .line 883
    .local v0, "result":J
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 884
    return-wide v0
.end method

.method private static mulAdd([B[B[B[B)V
    .locals 194
    .param p0, "s"    # [B
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .param p3, "c"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "a",
            "b",
            "c"
        }
    .end annotation

    .line 1167
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v4

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    .line 1168
    .local v4, "a0":J
    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v9

    const/4 v11, 0x5

    shr-long/2addr v9, v11

    and-long/2addr v9, v6

    .line 1169
    .local v9, "a1":J
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v12

    shr-long/2addr v12, v8

    and-long/2addr v12, v6

    .line 1170
    .local v12, "a2":J
    const/4 v14, 0x7

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v15

    shr-long/2addr v15, v14

    and-long/2addr v15, v6

    .line 1171
    .local v15, "a3":J
    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v17

    const/16 v19, 0x4

    shr-long v17, v17, v19

    and-long v17, v17, v6

    .line 1172
    .local v17, "a4":J
    const/16 v3, 0xd

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v21

    const/16 v23, 0x1

    shr-long v21, v21, v23

    and-long v21, v21, v6

    .line 1173
    .local v21, "a5":J
    const/16 v3, 0xf

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v24

    const/16 v26, 0x6

    shr-long v24, v24, v26

    and-long v24, v24, v6

    .line 1174
    .local v24, "a6":J
    const/16 v3, 0x12

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v27

    const/16 v29, 0x3

    shr-long v27, v27, v29

    and-long v27, v27, v6

    .line 1175
    .local v27, "a7":J
    const/16 v3, 0x15

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v30

    and-long v30, v30, v6

    .line 1176
    .local v30, "a8":J
    const/16 v3, 0x17

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v32

    shr-long v32, v32, v11

    and-long v32, v32, v6

    .line 1177
    .local v32, "a9":J
    const/16 v3, 0x1a

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v34

    shr-long v34, v34, v8

    and-long v34, v34, v6

    .line 1178
    .local v34, "a10":J
    const/16 v3, 0x1c

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v36

    shr-long v36, v36, v14

    .line 1179
    .local v36, "a11":J
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v38

    and-long v38, v38, v6

    .line 1180
    .local v38, "b0":J
    invoke-static {v1, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v40

    shr-long v40, v40, v11

    and-long v40, v40, v6

    .line 1181
    .local v40, "b1":J
    invoke-static {v1, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v42

    shr-long v42, v42, v8

    and-long v42, v42, v6

    .line 1182
    .local v42, "b2":J
    invoke-static {v1, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v44

    shr-long v44, v44, v14

    and-long v44, v44, v6

    .line 1183
    .local v44, "b3":J
    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v46

    shr-long v46, v46, v19

    and-long v46, v46, v6

    .line 1184
    .local v46, "b4":J
    const/16 v3, 0xd

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v48

    shr-long v48, v48, v23

    and-long v48, v48, v6

    .line 1185
    .local v48, "b5":J
    const/16 v3, 0xf

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v50

    shr-long v50, v50, v26

    and-long v50, v50, v6

    .line 1186
    .local v50, "b6":J
    const/16 v3, 0x12

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v52

    shr-long v52, v52, v29

    and-long v52, v52, v6

    .line 1187
    .local v52, "b7":J
    const/16 v3, 0x15

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v54

    and-long v54, v54, v6

    .line 1188
    .local v54, "b8":J
    const/16 v3, 0x17

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v56

    shr-long v56, v56, v11

    and-long v56, v56, v6

    .line 1189
    .local v56, "b9":J
    const/16 v3, 0x1a

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v58

    shr-long v58, v58, v8

    and-long v58, v58, v6

    .line 1190
    .local v58, "b10":J
    const/16 v3, 0x1c

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v60

    shr-long v60, v60, v14

    .line 1191
    .local v60, "b11":J
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v62

    and-long v62, v62, v6

    .line 1192
    .local v62, "c0":J
    invoke-static {v2, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v64

    shr-long v64, v64, v11

    and-long v64, v64, v6

    .line 1193
    .local v64, "c1":J
    invoke-static {v2, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v66

    shr-long v66, v66, v8

    and-long v66, v66, v6

    .line 1194
    .local v66, "c2":J
    invoke-static {v2, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v68

    shr-long v68, v68, v14

    and-long v68, v68, v6

    .line 1195
    .local v68, "c3":J
    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v70

    shr-long v70, v70, v19

    and-long v70, v70, v6

    .line 1196
    .local v70, "c4":J
    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v72

    shr-long v72, v72, v23

    and-long v72, v72, v6

    .line 1197
    .local v72, "c5":J
    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v74

    shr-long v74, v74, v26

    and-long v74, v74, v6

    .line 1198
    .local v74, "c6":J
    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v76

    shr-long v76, v76, v29

    and-long v76, v76, v6

    .line 1199
    .local v76, "c7":J
    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v78

    and-long v78, v78, v6

    .line 1200
    .local v78, "c8":J
    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v80

    shr-long v80, v80, v11

    and-long v80, v80, v6

    .line 1201
    .local v80, "c9":J
    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v82

    shr-long v82, v82, v8

    and-long v6, v82, v6

    .line 1202
    .local v6, "c10":J
    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v82

    shr-long v82, v82, v14

    .line 1251
    .local v82, "c11":J
    mul-long v84, v4, v38

    add-long v84, v62, v84

    .line 1252
    .local v84, "s0":J
    mul-long v86, v4, v40

    add-long v86, v64, v86

    mul-long v88, v9, v38

    add-long v86, v86, v88

    .line 1253
    .local v86, "s1":J
    mul-long v88, v4, v42

    add-long v88, v66, v88

    mul-long v90, v9, v40

    add-long v88, v88, v90

    mul-long v90, v12, v38

    add-long v88, v88, v90

    .line 1254
    .local v88, "s2":J
    mul-long v90, v4, v44

    add-long v90, v68, v90

    mul-long v92, v9, v42

    add-long v90, v90, v92

    mul-long v92, v12, v40

    add-long v90, v90, v92

    mul-long v92, v15, v38

    add-long v90, v90, v92

    .line 1255
    .local v90, "s3":J
    mul-long v92, v4, v46

    add-long v92, v70, v92

    mul-long v94, v9, v44

    add-long v92, v92, v94

    mul-long v94, v12, v42

    add-long v92, v92, v94

    mul-long v94, v15, v40

    add-long v92, v92, v94

    mul-long v94, v17, v38

    add-long v92, v92, v94

    .line 1256
    .local v92, "s4":J
    mul-long v94, v4, v48

    add-long v94, v72, v94

    mul-long v96, v9, v46

    add-long v94, v94, v96

    mul-long v96, v12, v44

    add-long v94, v94, v96

    mul-long v96, v15, v42

    add-long v94, v94, v96

    mul-long v96, v17, v40

    add-long v94, v94, v96

    mul-long v96, v21, v38

    add-long v94, v94, v96

    .line 1257
    .local v94, "s5":J
    mul-long v96, v4, v50

    add-long v96, v74, v96

    mul-long v98, v9, v48

    add-long v96, v96, v98

    mul-long v98, v12, v46

    add-long v96, v96, v98

    mul-long v98, v15, v44

    add-long v96, v96, v98

    mul-long v98, v17, v42

    add-long v96, v96, v98

    mul-long v98, v21, v40

    add-long v96, v96, v98

    mul-long v98, v24, v38

    add-long v96, v96, v98

    .line 1258
    .local v96, "s6":J
    mul-long v98, v4, v52

    add-long v98, v76, v98

    mul-long v100, v9, v50

    add-long v98, v98, v100

    mul-long v100, v12, v48

    add-long v98, v98, v100

    mul-long v100, v15, v46

    add-long v98, v98, v100

    mul-long v100, v17, v44

    add-long v98, v98, v100

    mul-long v100, v21, v42

    add-long v98, v98, v100

    mul-long v100, v24, v40

    add-long v98, v98, v100

    mul-long v100, v27, v38

    add-long v98, v98, v100

    .line 1259
    .local v98, "s7":J
    mul-long v100, v4, v54

    add-long v100, v78, v100

    mul-long v102, v9, v52

    add-long v100, v100, v102

    mul-long v102, v12, v50

    add-long v100, v100, v102

    mul-long v102, v15, v48

    add-long v100, v100, v102

    mul-long v102, v17, v46

    add-long v100, v100, v102

    mul-long v102, v21, v44

    add-long v100, v100, v102

    mul-long v102, v24, v42

    add-long v100, v100, v102

    mul-long v102, v27, v40

    add-long v100, v100, v102

    mul-long v102, v30, v38

    add-long v100, v100, v102

    .line 1261
    .local v100, "s8":J
    mul-long v102, v4, v56

    add-long v102, v80, v102

    mul-long v104, v9, v54

    add-long v102, v102, v104

    mul-long v104, v12, v52

    add-long v102, v102, v104

    mul-long v104, v15, v50

    add-long v102, v102, v104

    mul-long v104, v17, v48

    add-long v102, v102, v104

    mul-long v104, v21, v46

    add-long v102, v102, v104

    mul-long v104, v24, v44

    add-long v102, v102, v104

    mul-long v104, v27, v42

    add-long v102, v102, v104

    mul-long v104, v30, v40

    add-long v102, v102, v104

    mul-long v104, v32, v38

    add-long v102, v102, v104

    .line 1263
    .local v102, "s9":J
    mul-long v104, v4, v58

    add-long v104, v6, v104

    mul-long v106, v9, v56

    add-long v104, v104, v106

    mul-long v106, v12, v54

    add-long v104, v104, v106

    mul-long v106, v15, v52

    add-long v104, v104, v106

    mul-long v106, v17, v50

    add-long v104, v104, v106

    mul-long v106, v21, v48

    add-long v104, v104, v106

    mul-long v106, v24, v46

    add-long v104, v104, v106

    mul-long v106, v27, v44

    add-long v104, v104, v106

    mul-long v106, v30, v42

    add-long v104, v104, v106

    mul-long v106, v32, v40

    add-long v104, v104, v106

    mul-long v106, v34, v38

    add-long v104, v104, v106

    .line 1265
    .local v104, "s10":J
    mul-long v106, v4, v60

    add-long v106, v82, v106

    mul-long v108, v9, v58

    add-long v106, v106, v108

    mul-long v108, v12, v56

    add-long v106, v106, v108

    mul-long v108, v15, v54

    add-long v106, v106, v108

    mul-long v108, v17, v52

    add-long v106, v106, v108

    mul-long v108, v21, v50

    add-long v106, v106, v108

    mul-long v108, v24, v48

    add-long v106, v106, v108

    mul-long v108, v27, v46

    add-long v106, v106, v108

    mul-long v108, v30, v44

    add-long v106, v106, v108

    mul-long v108, v32, v42

    add-long v106, v106, v108

    mul-long v108, v34, v40

    add-long v106, v106, v108

    mul-long v108, v36, v38

    add-long v106, v106, v108

    .line 1267
    .local v106, "s11":J
    mul-long v108, v9, v60

    mul-long v110, v12, v58

    add-long v108, v108, v110

    mul-long v110, v15, v56

    add-long v108, v108, v110

    mul-long v110, v17, v54

    add-long v108, v108, v110

    mul-long v110, v21, v52

    add-long v108, v108, v110

    mul-long v110, v24, v50

    add-long v108, v108, v110

    mul-long v110, v27, v48

    add-long v108, v108, v110

    mul-long v110, v30, v46

    add-long v108, v108, v110

    mul-long v110, v32, v44

    add-long v108, v108, v110

    mul-long v110, v34, v42

    add-long v108, v108, v110

    mul-long v110, v36, v40

    add-long v108, v108, v110

    .line 1269
    .local v108, "s12":J
    mul-long v110, v12, v60

    mul-long v112, v15, v58

    add-long v110, v110, v112

    mul-long v112, v17, v56

    add-long v110, v110, v112

    mul-long v112, v21, v54

    add-long v110, v110, v112

    mul-long v112, v24, v52

    add-long v110, v110, v112

    mul-long v112, v27, v50

    add-long v110, v110, v112

    mul-long v112, v30, v48

    add-long v110, v110, v112

    mul-long v112, v32, v46

    add-long v110, v110, v112

    mul-long v112, v34, v44

    add-long v110, v110, v112

    mul-long v112, v36, v42

    add-long v110, v110, v112

    .line 1271
    .local v110, "s13":J
    mul-long v112, v15, v60

    mul-long v114, v17, v58

    add-long v112, v112, v114

    mul-long v114, v21, v56

    add-long v112, v112, v114

    mul-long v114, v24, v54

    add-long v112, v112, v114

    mul-long v114, v27, v52

    add-long v112, v112, v114

    mul-long v114, v30, v50

    add-long v112, v112, v114

    mul-long v114, v32, v48

    add-long v112, v112, v114

    mul-long v114, v34, v46

    add-long v112, v112, v114

    mul-long v114, v36, v44

    add-long v112, v112, v114

    .line 1273
    .local v112, "s14":J
    mul-long v114, v17, v60

    mul-long v116, v21, v58

    add-long v114, v114, v116

    mul-long v116, v24, v56

    add-long v114, v114, v116

    mul-long v116, v27, v54

    add-long v114, v114, v116

    mul-long v116, v30, v52

    add-long v114, v114, v116

    mul-long v116, v32, v50

    add-long v114, v114, v116

    mul-long v116, v34, v48

    add-long v114, v114, v116

    mul-long v116, v36, v46

    add-long v114, v114, v116

    .line 1274
    .local v114, "s15":J
    mul-long v116, v21, v60

    mul-long v118, v24, v58

    add-long v116, v116, v118

    mul-long v118, v27, v56

    add-long v116, v116, v118

    mul-long v118, v30, v54

    add-long v116, v116, v118

    mul-long v118, v32, v52

    add-long v116, v116, v118

    mul-long v118, v34, v50

    add-long v116, v116, v118

    mul-long v118, v36, v48

    add-long v116, v116, v118

    .line 1275
    .local v116, "s16":J
    mul-long v118, v24, v60

    mul-long v120, v27, v58

    add-long v118, v118, v120

    mul-long v120, v30, v56

    add-long v118, v118, v120

    mul-long v120, v32, v54

    add-long v118, v118, v120

    mul-long v120, v34, v52

    add-long v118, v118, v120

    mul-long v120, v36, v50

    add-long v118, v118, v120

    .line 1276
    .local v118, "s17":J
    mul-long v120, v27, v60

    mul-long v122, v30, v58

    add-long v120, v120, v122

    mul-long v122, v32, v56

    add-long v120, v120, v122

    mul-long v122, v34, v54

    add-long v120, v120, v122

    mul-long v122, v36, v52

    add-long v120, v120, v122

    .line 1277
    .local v120, "s18":J
    mul-long v122, v30, v60

    mul-long v124, v32, v58

    add-long v122, v122, v124

    mul-long v124, v34, v56

    add-long v122, v122, v124

    mul-long v124, v36, v54

    add-long v122, v122, v124

    .line 1278
    .local v122, "s19":J
    mul-long v124, v32, v60

    mul-long v126, v34, v58

    add-long v124, v124, v126

    mul-long v126, v36, v56

    add-long v124, v124, v126

    .line 1279
    .local v124, "s20":J
    mul-long v126, v34, v60

    mul-long v128, v36, v58

    add-long v126, v126, v128

    .line 1280
    .local v126, "s21":J
    mul-long v128, v36, v60

    .line 1281
    .local v128, "s22":J
    const-wide/16 v130, 0x0

    .line 1283
    .local v130, "s23":J
    const-wide/32 v132, 0x100000

    add-long v134, v84, v132

    const/16 v3, 0x15

    shr-long v134, v134, v3

    .local v134, "carry0":J
    add-long v86, v86, v134

    shl-long v136, v134, v3

    sub-long v84, v84, v136

    .line 1284
    add-long v136, v88, v132

    shr-long v136, v136, v3

    .local v136, "carry2":J
    add-long v90, v90, v136

    shl-long v138, v136, v3

    sub-long v88, v88, v138

    .line 1285
    add-long v138, v92, v132

    shr-long v138, v138, v3

    .local v138, "carry4":J
    add-long v94, v94, v138

    shl-long v140, v138, v3

    sub-long v92, v92, v140

    .line 1286
    add-long v140, v96, v132

    shr-long v140, v140, v3

    .local v140, "carry6":J
    add-long v98, v98, v140

    shl-long v142, v140, v3

    sub-long v96, v96, v142

    .line 1287
    add-long v142, v100, v132

    shr-long v142, v142, v3

    .local v142, "carry8":J
    add-long v102, v102, v142

    shl-long v144, v142, v3

    sub-long v100, v100, v144

    .line 1288
    add-long v144, v104, v132

    shr-long v144, v144, v3

    .local v144, "carry10":J
    add-long v106, v106, v144

    shl-long v146, v144, v3

    sub-long v104, v104, v146

    .line 1289
    add-long v146, v108, v132

    shr-long v146, v146, v3

    .local v146, "carry12":J
    add-long v110, v110, v146

    shl-long v148, v146, v3

    sub-long v108, v108, v148

    .line 1290
    add-long v148, v112, v132

    shr-long v148, v148, v3

    .local v148, "carry14":J
    add-long v114, v114, v148

    shl-long v150, v148, v3

    sub-long v112, v112, v150

    .line 1291
    add-long v150, v116, v132

    shr-long v150, v150, v3

    .local v150, "carry16":J
    add-long v118, v118, v150

    shl-long v152, v150, v3

    sub-long v116, v116, v152

    .line 1292
    add-long v152, v120, v132

    shr-long v152, v152, v3

    .local v152, "carry18":J
    add-long v122, v122, v152

    shl-long v154, v152, v3

    sub-long v120, v120, v154

    .line 1293
    add-long v154, v124, v132

    shr-long v154, v154, v3

    .local v154, "carry20":J
    add-long v126, v126, v154

    shl-long v156, v154, v3

    sub-long v124, v124, v156

    .line 1294
    add-long v156, v128, v132

    shr-long v156, v156, v3

    .local v156, "carry22":J
    add-long v130, v130, v156

    shl-long v158, v156, v3

    sub-long v128, v128, v158

    .line 1296
    add-long v158, v86, v132

    shr-long v158, v158, v3

    .local v158, "carry1":J
    add-long v88, v88, v158

    shl-long v160, v158, v3

    sub-long v86, v86, v160

    .line 1297
    add-long v160, v90, v132

    shr-long v160, v160, v3

    .local v160, "carry3":J
    add-long v92, v92, v160

    shl-long v162, v160, v3

    sub-long v90, v90, v162

    .line 1298
    add-long v162, v94, v132

    shr-long v162, v162, v3

    .local v162, "carry5":J
    add-long v96, v96, v162

    shl-long v164, v162, v3

    sub-long v94, v94, v164

    .line 1299
    add-long v164, v98, v132

    shr-long v164, v164, v3

    .local v164, "carry7":J
    add-long v100, v100, v164

    shl-long v166, v164, v3

    sub-long v98, v98, v166

    .line 1300
    add-long v166, v102, v132

    shr-long v166, v166, v3

    .local v166, "carry9":J
    add-long v104, v104, v166

    shl-long v168, v166, v3

    sub-long v102, v102, v168

    .line 1301
    add-long v168, v106, v132

    shr-long v168, v168, v3

    .local v168, "carry11":J
    add-long v108, v108, v168

    shl-long v170, v168, v3

    sub-long v106, v106, v170

    .line 1302
    add-long v170, v110, v132

    shr-long v170, v170, v3

    .local v170, "carry13":J
    add-long v112, v112, v170

    shl-long v172, v170, v3

    sub-long v110, v110, v172

    .line 1303
    add-long v172, v114, v132

    shr-long v172, v172, v3

    .local v172, "carry15":J
    add-long v116, v116, v172

    shl-long v174, v172, v3

    sub-long v114, v114, v174

    .line 1304
    add-long v174, v118, v132

    shr-long v174, v174, v3

    .local v174, "carry17":J
    add-long v120, v120, v174

    shl-long v176, v174, v3

    sub-long v118, v118, v176

    .line 1305
    add-long v176, v122, v132

    shr-long v176, v176, v3

    .local v176, "carry19":J
    add-long v124, v124, v176

    shl-long v178, v176, v3

    sub-long v122, v122, v178

    .line 1306
    add-long v178, v126, v132

    shr-long v178, v178, v3

    .local v178, "carry21":J
    add-long v128, v128, v178

    shl-long v180, v178, v3

    sub-long v126, v126, v180

    .line 1308
    const-wide/32 v180, 0xa2c13

    mul-long v182, v130, v180

    add-long v106, v106, v182

    .line 1309
    const-wide/32 v182, 0x72d18

    mul-long v184, v130, v182

    add-long v108, v108, v184

    .line 1310
    const-wide/32 v184, 0x9fb67

    mul-long v186, v130, v184

    add-long v110, v110, v186

    .line 1311
    const-wide/32 v186, 0xf39ad

    mul-long v188, v130, v186

    sub-long v112, v112, v188

    .line 1312
    const-wide/32 v188, 0x215d1

    mul-long v190, v130, v188

    add-long v114, v114, v190

    .line 1313
    const-wide/32 v190, 0xa6f7d

    mul-long v192, v130, v190

    sub-long v116, v116, v192

    .line 1316
    mul-long v192, v128, v180

    add-long v104, v104, v192

    .line 1317
    mul-long v192, v128, v182

    add-long v106, v106, v192

    .line 1318
    mul-long v192, v128, v184

    add-long v108, v108, v192

    .line 1319
    mul-long v192, v128, v186

    sub-long v110, v110, v192

    .line 1320
    mul-long v192, v128, v188

    add-long v112, v112, v192

    .line 1321
    mul-long v192, v128, v190

    sub-long v114, v114, v192

    .line 1324
    mul-long v192, v126, v180

    add-long v102, v102, v192

    .line 1325
    mul-long v192, v126, v182

    add-long v104, v104, v192

    .line 1326
    mul-long v192, v126, v184

    add-long v106, v106, v192

    .line 1327
    mul-long v192, v126, v186

    sub-long v108, v108, v192

    .line 1328
    mul-long v192, v126, v188

    add-long v110, v110, v192

    .line 1329
    mul-long v192, v126, v190

    sub-long v112, v112, v192

    .line 1332
    mul-long v192, v124, v180

    add-long v100, v100, v192

    .line 1333
    mul-long v192, v124, v182

    add-long v102, v102, v192

    .line 1334
    mul-long v192, v124, v184

    add-long v104, v104, v192

    .line 1335
    mul-long v192, v124, v186

    sub-long v106, v106, v192

    .line 1336
    mul-long v192, v124, v188

    add-long v108, v108, v192

    .line 1337
    mul-long v192, v124, v190

    sub-long v110, v110, v192

    .line 1340
    mul-long v192, v122, v180

    add-long v98, v98, v192

    .line 1341
    mul-long v192, v122, v182

    add-long v100, v100, v192

    .line 1342
    mul-long v192, v122, v184

    add-long v102, v102, v192

    .line 1343
    mul-long v192, v122, v186

    sub-long v104, v104, v192

    .line 1344
    mul-long v192, v122, v188

    add-long v106, v106, v192

    .line 1345
    mul-long v192, v122, v190

    sub-long v108, v108, v192

    .line 1348
    mul-long v192, v120, v180

    add-long v96, v96, v192

    .line 1349
    mul-long v192, v120, v182

    add-long v98, v98, v192

    .line 1350
    mul-long v192, v120, v184

    add-long v100, v100, v192

    .line 1351
    mul-long v192, v120, v186

    sub-long v102, v102, v192

    .line 1352
    mul-long v192, v120, v188

    add-long v104, v104, v192

    .line 1353
    mul-long v192, v120, v190

    sub-long v106, v106, v192

    .line 1356
    add-long v192, v96, v132

    const/16 v3, 0x15

    shr-long v140, v192, v3

    add-long v98, v98, v140

    shl-long v192, v140, v3

    sub-long v96, v96, v192

    .line 1357
    add-long v192, v100, v132

    shr-long v142, v192, v3

    add-long v102, v102, v142

    shl-long v192, v142, v3

    sub-long v100, v100, v192

    .line 1358
    add-long v192, v104, v132

    shr-long v144, v192, v3

    add-long v106, v106, v144

    shl-long v192, v144, v3

    sub-long v104, v104, v192

    .line 1359
    add-long v192, v108, v132

    shr-long v146, v192, v3

    add-long v110, v110, v146

    shl-long v192, v146, v3

    sub-long v108, v108, v192

    .line 1360
    add-long v192, v112, v132

    shr-long v148, v192, v3

    add-long v114, v114, v148

    shl-long v192, v148, v3

    sub-long v112, v112, v192

    .line 1361
    add-long v192, v116, v132

    shr-long v150, v192, v3

    add-long v118, v118, v150

    shl-long v192, v150, v3

    sub-long v116, v116, v192

    .line 1363
    add-long v192, v98, v132

    shr-long v164, v192, v3

    add-long v100, v100, v164

    shl-long v192, v164, v3

    sub-long v98, v98, v192

    .line 1364
    add-long v192, v102, v132

    shr-long v166, v192, v3

    add-long v104, v104, v166

    shl-long v192, v166, v3

    sub-long v102, v102, v192

    .line 1365
    add-long v192, v106, v132

    shr-long v168, v192, v3

    add-long v108, v108, v168

    shl-long v192, v168, v3

    sub-long v106, v106, v192

    .line 1366
    add-long v192, v110, v132

    shr-long v170, v192, v3

    add-long v112, v112, v170

    shl-long v192, v170, v3

    sub-long v110, v110, v192

    .line 1367
    add-long v192, v114, v132

    shr-long v172, v192, v3

    add-long v116, v116, v172

    shl-long v192, v172, v3

    sub-long v114, v114, v192

    .line 1369
    mul-long v192, v118, v180

    add-long v94, v94, v192

    .line 1370
    mul-long v192, v118, v182

    add-long v96, v96, v192

    .line 1371
    mul-long v192, v118, v184

    add-long v98, v98, v192

    .line 1372
    mul-long v192, v118, v186

    sub-long v100, v100, v192

    .line 1373
    mul-long v192, v118, v188

    add-long v102, v102, v192

    .line 1374
    mul-long v192, v118, v190

    sub-long v104, v104, v192

    .line 1377
    mul-long v192, v116, v180

    add-long v92, v92, v192

    .line 1378
    mul-long v192, v116, v182

    add-long v94, v94, v192

    .line 1379
    mul-long v192, v116, v184

    add-long v96, v96, v192

    .line 1380
    mul-long v192, v116, v186

    sub-long v98, v98, v192

    .line 1381
    mul-long v192, v116, v188

    add-long v100, v100, v192

    .line 1382
    mul-long v192, v116, v190

    sub-long v102, v102, v192

    .line 1385
    mul-long v192, v114, v180

    add-long v90, v90, v192

    .line 1386
    mul-long v192, v114, v182

    add-long v92, v92, v192

    .line 1387
    mul-long v192, v114, v184

    add-long v94, v94, v192

    .line 1388
    mul-long v192, v114, v186

    sub-long v96, v96, v192

    .line 1389
    mul-long v192, v114, v188

    add-long v98, v98, v192

    .line 1390
    mul-long v192, v114, v190

    sub-long v100, v100, v192

    .line 1393
    mul-long v192, v112, v180

    add-long v88, v88, v192

    .line 1394
    mul-long v192, v112, v182

    add-long v90, v90, v192

    .line 1395
    mul-long v192, v112, v184

    add-long v92, v92, v192

    .line 1396
    mul-long v192, v112, v186

    sub-long v94, v94, v192

    .line 1397
    mul-long v192, v112, v188

    add-long v96, v96, v192

    .line 1398
    mul-long v192, v112, v190

    sub-long v98, v98, v192

    .line 1401
    mul-long v192, v110, v180

    add-long v86, v86, v192

    .line 1402
    mul-long v192, v110, v182

    add-long v88, v88, v192

    .line 1403
    mul-long v192, v110, v184

    add-long v90, v90, v192

    .line 1404
    mul-long v192, v110, v186

    sub-long v92, v92, v192

    .line 1405
    mul-long v192, v110, v188

    add-long v94, v94, v192

    .line 1406
    mul-long v192, v110, v190

    sub-long v96, v96, v192

    .line 1409
    mul-long v192, v108, v180

    add-long v84, v84, v192

    .line 1410
    mul-long v192, v108, v182

    add-long v86, v86, v192

    .line 1411
    mul-long v192, v108, v184

    add-long v88, v88, v192

    .line 1412
    mul-long v192, v108, v186

    sub-long v90, v90, v192

    .line 1413
    mul-long v192, v108, v188

    add-long v92, v92, v192

    .line 1414
    mul-long v192, v108, v190

    sub-long v94, v94, v192

    .line 1415
    const-wide/16 v108, 0x0

    .line 1417
    add-long v192, v84, v132

    const/16 v3, 0x15

    shr-long v134, v192, v3

    add-long v86, v86, v134

    shl-long v192, v134, v3

    sub-long v84, v84, v192

    .line 1418
    add-long v192, v88, v132

    shr-long v136, v192, v3

    add-long v90, v90, v136

    shl-long v192, v136, v3

    sub-long v88, v88, v192

    .line 1419
    add-long v192, v92, v132

    shr-long v138, v192, v3

    add-long v94, v94, v138

    shl-long v192, v138, v3

    sub-long v92, v92, v192

    .line 1420
    add-long v192, v96, v132

    shr-long v140, v192, v3

    add-long v98, v98, v140

    shl-long v192, v140, v3

    sub-long v96, v96, v192

    .line 1421
    add-long v192, v100, v132

    shr-long v142, v192, v3

    add-long v102, v102, v142

    shl-long v192, v142, v3

    sub-long v100, v100, v192

    .line 1422
    add-long v192, v104, v132

    shr-long v144, v192, v3

    add-long v106, v106, v144

    shl-long v192, v144, v3

    sub-long v104, v104, v192

    .line 1424
    add-long v192, v86, v132

    shr-long v158, v192, v3

    add-long v88, v88, v158

    shl-long v192, v158, v3

    sub-long v86, v86, v192

    .line 1425
    add-long v192, v90, v132

    shr-long v160, v192, v3

    add-long v92, v92, v160

    shl-long v192, v160, v3

    sub-long v90, v90, v192

    .line 1426
    add-long v192, v94, v132

    shr-long v162, v192, v3

    add-long v96, v96, v162

    shl-long v192, v162, v3

    sub-long v94, v94, v192

    .line 1427
    add-long v192, v98, v132

    shr-long v164, v192, v3

    add-long v100, v100, v164

    shl-long v192, v164, v3

    sub-long v98, v98, v192

    .line 1428
    add-long v192, v102, v132

    shr-long v166, v192, v3

    add-long v104, v104, v166

    shl-long v192, v166, v3

    sub-long v102, v102, v192

    .line 1429
    add-long v132, v106, v132

    shr-long v132, v132, v3

    .end local v168    # "carry11":J
    .local v132, "carry11":J
    add-long v108, v108, v132

    shl-long v168, v132, v3

    sub-long v106, v106, v168

    .line 1431
    mul-long v168, v108, v180

    add-long v84, v84, v168

    .line 1432
    mul-long v168, v108, v182

    add-long v86, v86, v168

    .line 1433
    mul-long v168, v108, v184

    add-long v88, v88, v168

    .line 1434
    mul-long v168, v108, v186

    sub-long v90, v90, v168

    .line 1435
    mul-long v168, v108, v188

    add-long v92, v92, v168

    .line 1436
    mul-long v168, v108, v190

    sub-long v94, v94, v168

    .line 1437
    const-wide/16 v108, 0x0

    .line 1439
    const/16 v3, 0x15

    shr-long v134, v84, v3

    add-long v86, v86, v134

    shl-long v168, v134, v3

    sub-long v84, v84, v168

    .line 1440
    shr-long v158, v86, v3

    add-long v88, v88, v158

    shl-long v168, v158, v3

    sub-long v86, v86, v168

    .line 1441
    shr-long v136, v88, v3

    add-long v90, v90, v136

    shl-long v168, v136, v3

    sub-long v88, v88, v168

    .line 1442
    shr-long v160, v90, v3

    add-long v92, v92, v160

    shl-long v168, v160, v3

    sub-long v90, v90, v168

    .line 1443
    shr-long v138, v92, v3

    add-long v94, v94, v138

    shl-long v168, v138, v3

    sub-long v92, v92, v168

    .line 1444
    shr-long v162, v94, v3

    add-long v96, v96, v162

    shl-long v168, v162, v3

    sub-long v94, v94, v168

    .line 1445
    shr-long v140, v96, v3

    add-long v98, v98, v140

    shl-long v168, v140, v3

    sub-long v96, v96, v168

    .line 1446
    shr-long v164, v98, v3

    add-long v100, v100, v164

    shl-long v168, v164, v3

    sub-long v98, v98, v168

    .line 1447
    shr-long v142, v100, v3

    add-long v102, v102, v142

    shl-long v168, v142, v3

    sub-long v100, v100, v168

    .line 1448
    shr-long v166, v102, v3

    add-long v104, v104, v166

    shl-long v168, v166, v3

    sub-long v102, v102, v168

    .line 1449
    shr-long v144, v104, v3

    add-long v106, v106, v144

    shl-long v168, v144, v3

    sub-long v104, v104, v168

    .line 1450
    shr-long v132, v106, v3

    add-long v108, v108, v132

    shl-long v168, v132, v3

    sub-long v106, v106, v168

    .line 1452
    mul-long v180, v180, v108

    add-long v84, v84, v180

    .line 1453
    mul-long v182, v182, v108

    add-long v86, v86, v182

    .line 1454
    mul-long v184, v184, v108

    add-long v88, v88, v184

    .line 1455
    mul-long v186, v186, v108

    sub-long v90, v90, v186

    .line 1456
    mul-long v188, v188, v108

    add-long v92, v92, v188

    .line 1457
    mul-long v190, v190, v108

    sub-long v94, v94, v190

    .line 1460
    const/16 v3, 0x15

    shr-long v134, v84, v3

    add-long v86, v86, v134

    shl-long v168, v134, v3

    move-wide/from16 v181, v15

    .end local v15    # "a3":J
    .local v181, "a3":J
    sub-long v14, v84, v168

    .line 1461
    .end local v84    # "s0":J
    .local v14, "s0":J
    shr-long v84, v86, v3

    .end local v158    # "carry1":J
    .local v84, "carry1":J
    add-long v88, v88, v84

    shl-long v158, v84, v3

    sub-long v86, v86, v158

    .line 1462
    shr-long v136, v88, v3

    add-long v90, v90, v136

    shl-long v158, v136, v3

    sub-long v88, v88, v158

    .line 1463
    shr-long v158, v90, v3

    .end local v160    # "carry3":J
    .local v158, "carry3":J
    add-long v92, v92, v158

    shl-long v160, v158, v3

    sub-long v90, v90, v160

    .line 1464
    shr-long v138, v92, v3

    add-long v94, v94, v138

    shl-long v160, v138, v3

    sub-long v92, v92, v160

    .line 1465
    shr-long v160, v94, v3

    .end local v162    # "carry5":J
    .local v160, "carry5":J
    add-long v96, v96, v160

    shl-long v162, v160, v3

    sub-long v94, v94, v162

    .line 1466
    shr-long v140, v96, v3

    add-long v98, v98, v140

    shl-long v162, v140, v3

    sub-long v96, v96, v162

    .line 1467
    shr-long v162, v98, v3

    .end local v164    # "carry7":J
    .local v162, "carry7":J
    add-long v100, v100, v162

    shl-long v164, v162, v3

    sub-long v98, v98, v164

    .line 1468
    shr-long v142, v100, v3

    add-long v102, v102, v142

    shl-long v164, v142, v3

    move-wide/from16 v168, v9

    .end local v9    # "a1":J
    .local v168, "a1":J
    sub-long v8, v100, v164

    .line 1469
    .end local v100    # "s8":J
    .local v8, "s8":J
    shr-long v100, v102, v3

    .end local v166    # "carry9":J
    .local v100, "carry9":J
    add-long v104, v104, v100

    shl-long v164, v100, v3

    sub-long v102, v102, v164

    .line 1470
    shr-long v144, v104, v3

    add-long v106, v106, v144

    shl-long v164, v144, v3

    sub-long v104, v104, v164

    .line 1472
    long-to-int v3, v14

    int-to-byte v3, v3

    const/4 v10, 0x0

    aput-byte v3, p0, v10

    .line 1473
    const/16 v3, 0x8

    move-wide/from16 v164, v12

    .end local v12    # "a2":J
    .local v164, "a2":J
    shr-long v11, v14, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, p0, v23

    .line 1474
    const/16 v3, 0x10

    shr-long v11, v14, v3

    const/4 v3, 0x5

    shl-long v166, v86, v3

    or-long v11, v11, v166

    long-to-int v3, v11

    int-to-byte v3, v3

    const/4 v11, 0x2

    aput-byte v3, p0, v11

    .line 1475
    shr-long v11, v86, v29

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, p0, v29

    .line 1476
    const/16 v3, 0xb

    shr-long v11, v86, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, p0, v19

    .line 1477
    const/16 v3, 0x13

    shr-long v11, v86, v3

    const/4 v3, 0x2

    shl-long v166, v88, v3

    or-long v11, v11, v166

    long-to-int v3, v11

    int-to-byte v3, v3

    const/4 v10, 0x5

    aput-byte v3, p0, v10

    .line 1478
    shr-long v11, v88, v26

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, p0, v26

    .line 1479
    const/16 v3, 0xe

    shr-long v11, v88, v3

    const/4 v3, 0x7

    shl-long v166, v90, v3

    or-long v11, v11, v166

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, p0, v3

    .line 1480
    shr-long v11, v90, v23

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x8

    aput-byte v3, p0, v11

    .line 1481
    const/16 v3, 0x9

    shr-long v11, v90, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x9

    aput-byte v3, p0, v11

    .line 1482
    const/16 v3, 0x11

    shr-long v11, v90, v3

    shl-long v166, v92, v19

    or-long v11, v11, v166

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0xa

    aput-byte v3, p0, v11

    .line 1483
    shr-long v11, v92, v19

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0xb

    aput-byte v3, p0, v11

    .line 1484
    const/16 v3, 0xc

    shr-long v11, v92, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0xc

    aput-byte v3, p0, v11

    .line 1485
    const/16 v3, 0x14

    shr-long v11, v92, v3

    shl-long v166, v94, v23

    or-long v11, v11, v166

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0xd

    aput-byte v3, p0, v11

    .line 1486
    const/4 v3, 0x7

    shr-long v11, v94, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0xe

    aput-byte v3, p0, v11

    .line 1487
    const/16 v3, 0xf

    shr-long v11, v94, v3

    shl-long v166, v96, v26

    or-long v11, v11, v166

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, p0, v3

    .line 1488
    const/4 v3, 0x2

    shr-long v11, v96, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x10

    aput-byte v3, p0, v11

    .line 1489
    const/16 v3, 0xa

    shr-long v11, v96, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x11

    aput-byte v3, p0, v11

    .line 1490
    const/16 v3, 0x12

    shr-long v11, v96, v3

    shl-long v19, v98, v29

    or-long v11, v11, v19

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, p0, v3

    .line 1491
    const/4 v3, 0x5

    shr-long v11, v98, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x13

    aput-byte v3, p0, v11

    .line 1492
    const/16 v3, 0xd

    shr-long v11, v98, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x14

    aput-byte v3, p0, v11

    .line 1493
    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v11, 0x15

    aput-byte v3, p0, v11

    .line 1494
    const/16 v3, 0x8

    shr-long v11, v8, v3

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x16

    aput-byte v3, p0, v11

    .line 1495
    const/16 v3, 0x10

    shr-long v11, v8, v3

    const/4 v3, 0x5

    shl-long v19, v102, v3

    or-long v10, v11, v19

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x17

    aput-byte v3, p0, v10

    .line 1496
    shr-long v10, v102, v29

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x18

    aput-byte v3, p0, v10

    .line 1497
    const/16 v3, 0xb

    shr-long v10, v102, v3

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x19

    aput-byte v3, p0, v10

    .line 1498
    const/16 v3, 0x13

    shr-long v10, v102, v3

    const/4 v3, 0x2

    shl-long v12, v104, v3

    or-long/2addr v10, v12

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x1a

    aput-byte v3, p0, v10

    .line 1499
    shr-long v10, v104, v26

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x1b

    aput-byte v3, p0, v10

    .line 1500
    const/16 v3, 0xe

    shr-long v10, v104, v3

    const/4 v3, 0x7

    shl-long v12, v106, v3

    or-long/2addr v10, v12

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x1c

    aput-byte v3, p0, v10

    .line 1501
    shr-long v10, v106, v23

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x1d

    aput-byte v3, p0, v10

    .line 1502
    const/16 v3, 0x9

    shr-long v10, v106, v3

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x1e

    aput-byte v3, p0, v10

    .line 1503
    const/16 v3, 0x11

    shr-long v10, v106, v3

    long-to-int v3, v10

    int-to-byte v3, v3

    const/16 v10, 0x1f

    aput-byte v3, p0, v10

    .line 1504
    return-void
.end method

.method private static neg([J[J)V
    .locals 3
    .param p0, "out"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 761
    aget-wide v1, p1, v0

    neg-long v1, v1

    aput-wide v1, p0, v0

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static pow2252m3([J[J)V
    .locals 7
    .param p0, "out"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 769
    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 770
    .local v1, "t0":[J
    new-array v2, v0, [J

    .line 771
    .local v2, "t1":[J
    new-array v3, v0, [J

    .line 774
    .local v3, "t2":[J
    invoke-static {v1, p1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 777
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 778
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 779
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 778
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 783
    .end local v4    # "i":I
    :cond_0
    invoke-static {v2, p1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 786
    invoke-static {v1, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 789
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 792
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 795
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 796
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    const/4 v6, 0x5

    if-ge v4, v6, :cond_1

    .line 797
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 796
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 801
    .end local v4    # "i":I
    :cond_1
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 804
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 805
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 806
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 805
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 810
    .end local v4    # "i":I
    :cond_2
    invoke-static {v2, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 813
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 814
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_3
    const/16 v6, 0x14

    if-ge v4, v6, :cond_3

    .line 815
    invoke-static {v3, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 814
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 819
    .end local v4    # "i":I
    :cond_3
    invoke-static {v2, v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 822
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 823
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v0, :cond_4

    .line 824
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 823
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 828
    .end local v4    # "i":I
    :cond_4
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 831
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 832
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_5
    const/16 v4, 0x32

    if-ge v0, v4, :cond_5

    .line 833
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 837
    .end local v0    # "i":I
    :cond_5
    invoke-static {v2, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 840
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 841
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_6
    const/16 v6, 0x64

    if-ge v0, v6, :cond_6

    .line 842
    invoke-static {v3, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 846
    .end local v0    # "i":I
    :cond_6
    invoke-static {v2, v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 849
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 850
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v4, :cond_7

    .line 851
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 855
    .end local v0    # "i":I
    :cond_7
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 858
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 859
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_8
    if-ge v0, v5, :cond_8

    .line 860
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 864
    .end local v0    # "i":I
    :cond_8
    invoke-static {p0, v1, p1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 865
    return-void
.end method

.method private static reduce([B)V
    .locals 108
    .param p0, "s"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 904
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    .line 905
    .local v1, "s0":J
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v6

    const/4 v8, 0x5

    shr-long/2addr v6, v8

    and-long/2addr v6, v3

    .line 906
    .local v6, "s1":J
    invoke-static {v0, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v9

    shr-long/2addr v9, v5

    and-long/2addr v9, v3

    .line 907
    .local v9, "s2":J
    const/4 v11, 0x7

    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v12

    shr-long/2addr v12, v11

    and-long/2addr v12, v3

    .line 908
    .local v12, "s3":J
    const/16 v14, 0xa

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v15

    const/16 v17, 0x4

    shr-long v15, v15, v17

    and-long/2addr v15, v3

    .line 909
    .local v15, "s4":J
    const/16 v14, 0xd

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v19

    const/16 v21, 0x1

    shr-long v19, v19, v21

    and-long v19, v19, v3

    .line 910
    .local v19, "s5":J
    const/16 v14, 0xf

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v22

    const/16 v24, 0x6

    shr-long v22, v22, v24

    and-long v22, v22, v3

    .line 911
    .local v22, "s6":J
    const/16 v14, 0x12

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v25

    const/16 v27, 0x3

    shr-long v25, v25, v27

    and-long v25, v25, v3

    .line 912
    .local v25, "s7":J
    const/16 v14, 0x15

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v28

    and-long v28, v28, v3

    .line 913
    .local v28, "s8":J
    const/16 v14, 0x17

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v30

    shr-long v30, v30, v8

    and-long v30, v30, v3

    .line 914
    .local v30, "s9":J
    const/16 v14, 0x1a

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v32

    shr-long v32, v32, v5

    and-long v32, v32, v3

    .line 915
    .local v32, "s10":J
    const/16 v14, 0x1c

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v34

    shr-long v34, v34, v11

    and-long v34, v34, v3

    .line 916
    .local v34, "s11":J
    const/16 v14, 0x1f

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v36

    shr-long v36, v36, v17

    and-long v36, v36, v3

    .line 917
    .local v36, "s12":J
    const/16 v14, 0x22

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v38

    shr-long v38, v38, v21

    and-long v38, v38, v3

    .line 918
    .local v38, "s13":J
    const/16 v14, 0x24

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v40

    shr-long v40, v40, v24

    and-long v40, v40, v3

    .line 919
    .local v40, "s14":J
    const/16 v14, 0x27

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v42

    shr-long v42, v42, v27

    and-long v42, v42, v3

    .line 920
    .local v42, "s15":J
    const/16 v14, 0x2a

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v44

    and-long v44, v44, v3

    .line 921
    .local v44, "s16":J
    const/16 v14, 0x2c

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v46

    shr-long v46, v46, v8

    and-long v46, v46, v3

    .line 922
    .local v46, "s17":J
    const/16 v14, 0x2f

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v48

    shr-long v48, v48, v5

    and-long v48, v48, v3

    .line 923
    .local v48, "s18":J
    const/16 v14, 0x31

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v50

    shr-long v50, v50, v11

    and-long v50, v50, v3

    .line 924
    .local v50, "s19":J
    const/16 v14, 0x34

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v52

    shr-long v52, v52, v17

    and-long v52, v52, v3

    .line 925
    .local v52, "s20":J
    const/16 v14, 0x37

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v54

    shr-long v54, v54, v21

    and-long v54, v54, v3

    .line 926
    .local v54, "s21":J
    const/16 v14, 0x39

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v56

    shr-long v56, v56, v24

    and-long v3, v56, v3

    .line 927
    .local v3, "s22":J
    const/16 v14, 0x3c

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v56

    shr-long v56, v56, v27

    .line 950
    .local v56, "s23":J
    const-wide/32 v58, 0xa2c13

    mul-long v60, v56, v58

    add-long v34, v34, v60

    .line 951
    const-wide/32 v60, 0x72d18

    mul-long v62, v56, v60

    add-long v36, v36, v62

    .line 952
    const-wide/32 v62, 0x9fb67

    mul-long v64, v56, v62

    add-long v38, v38, v64

    .line 953
    const-wide/32 v64, 0xf39ad

    mul-long v66, v56, v64

    sub-long v40, v40, v66

    .line 954
    const-wide/32 v66, 0x215d1

    mul-long v68, v56, v66

    add-long v42, v42, v68

    .line 955
    const-wide/32 v68, 0xa6f7d

    mul-long v70, v56, v68

    sub-long v44, v44, v70

    .line 958
    mul-long v70, v3, v58

    add-long v32, v32, v70

    .line 959
    mul-long v70, v3, v60

    add-long v34, v34, v70

    .line 960
    mul-long v70, v3, v62

    add-long v36, v36, v70

    .line 961
    mul-long v70, v3, v64

    sub-long v38, v38, v70

    .line 962
    mul-long v70, v3, v66

    add-long v40, v40, v70

    .line 963
    mul-long v70, v3, v68

    sub-long v42, v42, v70

    .line 966
    mul-long v70, v54, v58

    add-long v30, v30, v70

    .line 967
    mul-long v70, v54, v60

    add-long v32, v32, v70

    .line 968
    mul-long v70, v54, v62

    add-long v34, v34, v70

    .line 969
    mul-long v70, v54, v64

    sub-long v36, v36, v70

    .line 970
    mul-long v70, v54, v66

    add-long v38, v38, v70

    .line 971
    mul-long v70, v54, v68

    sub-long v40, v40, v70

    .line 974
    mul-long v70, v52, v58

    add-long v28, v28, v70

    .line 975
    mul-long v70, v52, v60

    add-long v30, v30, v70

    .line 976
    mul-long v70, v52, v62

    add-long v32, v32, v70

    .line 977
    mul-long v70, v52, v64

    sub-long v34, v34, v70

    .line 978
    mul-long v70, v52, v66

    add-long v36, v36, v70

    .line 979
    mul-long v70, v52, v68

    sub-long v38, v38, v70

    .line 982
    mul-long v70, v50, v58

    add-long v25, v25, v70

    .line 983
    mul-long v70, v50, v60

    add-long v28, v28, v70

    .line 984
    mul-long v70, v50, v62

    add-long v30, v30, v70

    .line 985
    mul-long v70, v50, v64

    sub-long v32, v32, v70

    .line 986
    mul-long v70, v50, v66

    add-long v34, v34, v70

    .line 987
    mul-long v70, v50, v68

    sub-long v36, v36, v70

    .line 990
    mul-long v70, v48, v58

    add-long v22, v22, v70

    .line 991
    mul-long v70, v48, v60

    add-long v25, v25, v70

    .line 992
    mul-long v70, v48, v62

    add-long v28, v28, v70

    .line 993
    mul-long v70, v48, v64

    sub-long v30, v30, v70

    .line 994
    mul-long v70, v48, v66

    add-long v32, v32, v70

    .line 995
    mul-long v70, v48, v68

    sub-long v34, v34, v70

    .line 999
    const-wide/32 v70, 0x100000

    add-long v72, v22, v70

    const/16 v14, 0x15

    shr-long v72, v72, v14

    .local v72, "carry6":J
    add-long v25, v25, v72

    shl-long v74, v72, v14

    sub-long v22, v22, v74

    .line 1000
    add-long v74, v28, v70

    shr-long v74, v74, v14

    .local v74, "carry8":J
    add-long v30, v30, v74

    shl-long v76, v74, v14

    sub-long v28, v28, v76

    .line 1001
    add-long v76, v32, v70

    shr-long v76, v76, v14

    .local v76, "carry10":J
    add-long v34, v34, v76

    shl-long v78, v76, v14

    sub-long v32, v32, v78

    .line 1002
    add-long v78, v36, v70

    shr-long v78, v78, v14

    .local v78, "carry12":J
    add-long v38, v38, v78

    shl-long v80, v78, v14

    sub-long v36, v36, v80

    .line 1003
    add-long v80, v40, v70

    shr-long v80, v80, v14

    .local v80, "carry14":J
    add-long v42, v42, v80

    shl-long v82, v80, v14

    sub-long v40, v40, v82

    .line 1004
    add-long v82, v44, v70

    shr-long v82, v82, v14

    .local v82, "carry16":J
    add-long v46, v46, v82

    shl-long v84, v82, v14

    sub-long v44, v44, v84

    .line 1006
    add-long v84, v25, v70

    shr-long v84, v84, v14

    .local v84, "carry7":J
    add-long v28, v28, v84

    shl-long v86, v84, v14

    sub-long v25, v25, v86

    .line 1007
    add-long v86, v30, v70

    shr-long v86, v86, v14

    .local v86, "carry9":J
    add-long v32, v32, v86

    shl-long v88, v86, v14

    sub-long v30, v30, v88

    .line 1008
    add-long v88, v34, v70

    shr-long v88, v88, v14

    .local v88, "carry11":J
    add-long v36, v36, v88

    shl-long v90, v88, v14

    sub-long v34, v34, v90

    .line 1009
    add-long v90, v38, v70

    shr-long v90, v90, v14

    .local v90, "carry13":J
    add-long v40, v40, v90

    shl-long v92, v90, v14

    sub-long v38, v38, v92

    .line 1010
    add-long v92, v42, v70

    shr-long v92, v92, v14

    .local v92, "carry15":J
    add-long v44, v44, v92

    shl-long v94, v92, v14

    sub-long v42, v42, v94

    .line 1013
    mul-long v94, v46, v58

    add-long v19, v19, v94

    .line 1014
    mul-long v94, v46, v60

    add-long v22, v22, v94

    .line 1015
    mul-long v94, v46, v62

    add-long v25, v25, v94

    .line 1016
    mul-long v94, v46, v64

    sub-long v28, v28, v94

    .line 1017
    mul-long v94, v46, v66

    add-long v30, v30, v94

    .line 1018
    mul-long v94, v46, v68

    sub-long v32, v32, v94

    .line 1021
    mul-long v94, v44, v58

    add-long v15, v15, v94

    .line 1022
    mul-long v94, v44, v60

    add-long v19, v19, v94

    .line 1023
    mul-long v94, v44, v62

    add-long v22, v22, v94

    .line 1024
    mul-long v94, v44, v64

    sub-long v25, v25, v94

    .line 1025
    mul-long v94, v44, v66

    add-long v28, v28, v94

    .line 1026
    mul-long v94, v44, v68

    sub-long v30, v30, v94

    .line 1029
    mul-long v94, v42, v58

    add-long v12, v12, v94

    .line 1030
    mul-long v94, v42, v60

    add-long v15, v15, v94

    .line 1031
    mul-long v94, v42, v62

    add-long v19, v19, v94

    .line 1032
    mul-long v94, v42, v64

    sub-long v22, v22, v94

    .line 1033
    mul-long v94, v42, v66

    add-long v25, v25, v94

    .line 1034
    mul-long v94, v42, v68

    sub-long v28, v28, v94

    .line 1037
    mul-long v94, v40, v58

    add-long v9, v9, v94

    .line 1038
    mul-long v94, v40, v60

    add-long v12, v12, v94

    .line 1039
    mul-long v94, v40, v62

    add-long v15, v15, v94

    .line 1040
    mul-long v94, v40, v64

    sub-long v19, v19, v94

    .line 1041
    mul-long v94, v40, v66

    add-long v22, v22, v94

    .line 1042
    mul-long v94, v40, v68

    sub-long v25, v25, v94

    .line 1045
    mul-long v94, v38, v58

    add-long v6, v6, v94

    .line 1046
    mul-long v94, v38, v60

    add-long v9, v9, v94

    .line 1047
    mul-long v94, v38, v62

    add-long v12, v12, v94

    .line 1048
    mul-long v94, v38, v64

    sub-long v15, v15, v94

    .line 1049
    mul-long v94, v38, v66

    add-long v19, v19, v94

    .line 1050
    mul-long v94, v38, v68

    sub-long v22, v22, v94

    .line 1053
    mul-long v94, v36, v58

    add-long v1, v1, v94

    .line 1054
    mul-long v94, v36, v60

    add-long v6, v6, v94

    .line 1055
    mul-long v94, v36, v62

    add-long v9, v9, v94

    .line 1056
    mul-long v94, v36, v64

    sub-long v12, v12, v94

    .line 1057
    mul-long v94, v36, v66

    add-long v15, v15, v94

    .line 1058
    mul-long v94, v36, v68

    sub-long v19, v19, v94

    .line 1059
    const-wide/16 v36, 0x0

    .line 1062
    add-long v94, v1, v70

    const/16 v14, 0x15

    shr-long v94, v94, v14

    .local v94, "carry0":J
    add-long v6, v6, v94

    shl-long v96, v94, v14

    sub-long v1, v1, v96

    .line 1063
    add-long v96, v9, v70

    shr-long v96, v96, v14

    .local v96, "carry2":J
    add-long v12, v12, v96

    shl-long v98, v96, v14

    sub-long v9, v9, v98

    .line 1064
    add-long v98, v15, v70

    shr-long v98, v98, v14

    .local v98, "carry4":J
    add-long v19, v19, v98

    shl-long v100, v98, v14

    sub-long v15, v15, v100

    .line 1065
    add-long v100, v22, v70

    shr-long v72, v100, v14

    add-long v25, v25, v72

    shl-long v100, v72, v14

    sub-long v22, v22, v100

    .line 1066
    add-long v100, v28, v70

    shr-long v74, v100, v14

    add-long v30, v30, v74

    shl-long v100, v74, v14

    sub-long v28, v28, v100

    .line 1067
    add-long v100, v32, v70

    shr-long v76, v100, v14

    add-long v34, v34, v76

    shl-long v100, v76, v14

    sub-long v32, v32, v100

    .line 1069
    add-long v100, v6, v70

    shr-long v100, v100, v14

    .local v100, "carry1":J
    add-long v9, v9, v100

    shl-long v102, v100, v14

    sub-long v6, v6, v102

    .line 1070
    add-long v102, v12, v70

    shr-long v102, v102, v14

    .local v102, "carry3":J
    add-long v15, v15, v102

    shl-long v104, v102, v14

    sub-long v12, v12, v104

    .line 1071
    add-long v104, v19, v70

    shr-long v104, v104, v14

    .local v104, "carry5":J
    add-long v22, v22, v104

    shl-long v106, v104, v14

    sub-long v19, v19, v106

    .line 1072
    add-long v106, v25, v70

    shr-long v84, v106, v14

    add-long v28, v28, v84

    shl-long v106, v84, v14

    sub-long v25, v25, v106

    .line 1073
    add-long v106, v30, v70

    shr-long v86, v106, v14

    add-long v32, v32, v86

    shl-long v106, v86, v14

    sub-long v30, v30, v106

    .line 1074
    add-long v70, v34, v70

    shr-long v70, v70, v14

    .end local v88    # "carry11":J
    .local v70, "carry11":J
    add-long v36, v36, v70

    shl-long v88, v70, v14

    sub-long v34, v34, v88

    .line 1076
    mul-long v88, v36, v58

    add-long v1, v1, v88

    .line 1077
    mul-long v88, v36, v60

    add-long v6, v6, v88

    .line 1078
    mul-long v88, v36, v62

    add-long v9, v9, v88

    .line 1079
    mul-long v88, v36, v64

    sub-long v12, v12, v88

    .line 1080
    mul-long v88, v36, v66

    add-long v15, v15, v88

    .line 1081
    mul-long v88, v36, v68

    sub-long v19, v19, v88

    .line 1082
    const-wide/16 v36, 0x0

    .line 1085
    const/16 v14, 0x15

    shr-long v88, v1, v14

    .end local v94    # "carry0":J
    .local v88, "carry0":J
    add-long v6, v6, v88

    shl-long v94, v88, v14

    sub-long v1, v1, v94

    .line 1086
    shr-long v94, v6, v14

    .end local v100    # "carry1":J
    .local v94, "carry1":J
    add-long v9, v9, v94

    shl-long v100, v94, v14

    sub-long v6, v6, v100

    .line 1087
    shr-long v96, v9, v14

    add-long v12, v12, v96

    shl-long v100, v96, v14

    sub-long v9, v9, v100

    .line 1088
    shr-long v100, v12, v14

    .end local v102    # "carry3":J
    .local v100, "carry3":J
    add-long v15, v15, v100

    shl-long v102, v100, v14

    sub-long v12, v12, v102

    .line 1089
    shr-long v98, v15, v14

    add-long v19, v19, v98

    shl-long v102, v98, v14

    sub-long v15, v15, v102

    .line 1090
    shr-long v102, v19, v14

    .end local v104    # "carry5":J
    .local v102, "carry5":J
    add-long v22, v22, v102

    shl-long v104, v102, v14

    sub-long v19, v19, v104

    .line 1091
    shr-long v72, v22, v14

    add-long v25, v25, v72

    shl-long v104, v72, v14

    sub-long v22, v22, v104

    .line 1092
    shr-long v84, v25, v14

    add-long v28, v28, v84

    shl-long v104, v84, v14

    sub-long v25, v25, v104

    .line 1093
    shr-long v74, v28, v14

    add-long v30, v30, v74

    shl-long v104, v74, v14

    sub-long v28, v28, v104

    .line 1094
    shr-long v86, v30, v14

    add-long v32, v32, v86

    shl-long v104, v86, v14

    sub-long v30, v30, v104

    .line 1095
    shr-long v76, v32, v14

    add-long v34, v34, v76

    shl-long v104, v76, v14

    sub-long v32, v32, v104

    .line 1096
    shr-long v70, v34, v14

    add-long v36, v36, v70

    shl-long v104, v70, v14

    sub-long v34, v34, v104

    .line 1099
    mul-long v58, v58, v36

    add-long v1, v1, v58

    .line 1100
    mul-long v60, v60, v36

    add-long v6, v6, v60

    .line 1101
    mul-long v62, v62, v36

    add-long v9, v9, v62

    .line 1102
    mul-long v64, v64, v36

    sub-long v12, v12, v64

    .line 1103
    mul-long v66, v66, v36

    add-long v15, v15, v66

    .line 1104
    mul-long v68, v68, v36

    sub-long v19, v19, v68

    .line 1107
    const/16 v14, 0x15

    shr-long v58, v1, v14

    .end local v88    # "carry0":J
    .local v58, "carry0":J
    add-long v6, v6, v58

    shl-long v60, v58, v14

    sub-long v1, v1, v60

    .line 1108
    shr-long v60, v6, v14

    .end local v94    # "carry1":J
    .local v60, "carry1":J
    add-long v9, v9, v60

    shl-long v62, v60, v14

    sub-long v6, v6, v62

    .line 1109
    shr-long v62, v9, v14

    .end local v96    # "carry2":J
    .local v62, "carry2":J
    add-long v12, v12, v62

    shl-long v64, v62, v14

    sub-long v9, v9, v64

    .line 1110
    shr-long v64, v12, v14

    .end local v100    # "carry3":J
    .local v64, "carry3":J
    add-long v15, v15, v64

    shl-long v66, v64, v14

    sub-long v12, v12, v66

    .line 1111
    shr-long v66, v15, v14

    .end local v98    # "carry4":J
    .local v66, "carry4":J
    add-long v19, v19, v66

    shl-long v68, v66, v14

    sub-long v15, v15, v68

    .line 1112
    shr-long v68, v19, v14

    .end local v102    # "carry5":J
    .local v68, "carry5":J
    add-long v22, v22, v68

    shl-long v88, v68, v14

    sub-long v19, v19, v88

    .line 1113
    shr-long v72, v22, v14

    add-long v25, v25, v72

    shl-long v88, v72, v14

    sub-long v22, v22, v88

    .line 1114
    shr-long v84, v25, v14

    add-long v28, v28, v84

    shl-long v88, v84, v14

    sub-long v25, v25, v88

    .line 1115
    shr-long v74, v28, v14

    add-long v30, v30, v74

    shl-long v88, v74, v14

    move-wide/from16 v95, v12

    .end local v12    # "s3":J
    .local v95, "s3":J
    sub-long v11, v28, v88

    .line 1116
    .end local v28    # "s8":J
    .local v11, "s8":J
    shr-long v28, v30, v14

    .end local v86    # "carry9":J
    .local v28, "carry9":J
    add-long v32, v32, v28

    shl-long v86, v28, v14

    sub-long v30, v30, v86

    .line 1117
    shr-long v76, v32, v14

    add-long v34, v34, v76

    shl-long v86, v76, v14

    sub-long v32, v32, v86

    .line 1120
    long-to-int v13, v1

    int-to-byte v13, v13

    const/4 v14, 0x0

    aput-byte v13, v0, v14

    .line 1121
    const/16 v13, 0x8

    move-wide/from16 v86, v6

    .end local v6    # "s1":J
    .local v86, "s1":J
    shr-long v5, v1, v13

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v21

    .line 1122
    const/16 v5, 0x10

    shr-long v6, v1, v5

    shl-long v88, v86, v8

    or-long v6, v6, v88

    long-to-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    aput-byte v6, v0, v7

    .line 1123
    shr-long v6, v86, v27

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v27

    .line 1124
    const/16 v6, 0xb

    shr-long v6, v86, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v17

    .line 1125
    const/16 v6, 0x13

    shr-long v6, v86, v6

    const/4 v14, 0x2

    shl-long v88, v9, v14

    or-long v6, v6, v88

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v8

    .line 1126
    shr-long v6, v9, v24

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v24

    .line 1127
    const/16 v6, 0xe

    shr-long v6, v9, v6

    const/16 v88, 0x7

    shl-long v97, v95, v88

    or-long v6, v6, v97

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v88

    .line 1128
    shr-long v6, v95, v21

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v13

    .line 1129
    const/16 v6, 0x9

    shr-long v6, v95, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x9

    aput-byte v6, v0, v7

    .line 1130
    const/16 v6, 0x11

    shr-long v6, v95, v6

    shl-long v88, v15, v17

    or-long v6, v6, v88

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xa

    aput-byte v6, v0, v7

    .line 1131
    shr-long v6, v15, v17

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xb

    aput-byte v6, v0, v7

    .line 1132
    const/16 v6, 0xc

    shr-long v6, v15, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xc

    aput-byte v6, v0, v7

    .line 1133
    const/16 v6, 0x14

    shr-long v6, v15, v6

    shl-long v88, v19, v21

    or-long v6, v6, v88

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0xd

    aput-byte v6, v0, v7

    .line 1134
    move-wide/from16 v88, v15

    const/4 v6, 0x7

    .end local v15    # "s4":J
    .local v88, "s4":J
    shr-long v14, v19, v6

    long-to-int v6, v14

    int-to-byte v6, v6

    const/16 v14, 0xe

    aput-byte v6, v0, v14

    .line 1135
    const/16 v6, 0xf

    shr-long v14, v19, v6

    shl-long v16, v22, v24

    or-long v14, v14, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v0, v6

    .line 1136
    const/4 v6, 0x2

    shr-long v14, v22, v6

    move-wide v6, v14

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 1137
    const/16 v6, 0xa

    shr-long v6, v22, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x11

    aput-byte v6, v0, v7

    .line 1138
    const/16 v6, 0x12

    shr-long v15, v22, v6

    shl-long v17, v25, v27

    or-long v14, v15, v17

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v0, v6

    .line 1139
    shr-long v14, v25, v8

    long-to-int v6, v14

    int-to-byte v6, v6

    const/16 v14, 0x13

    aput-byte v6, v0, v14

    .line 1140
    const/16 v6, 0xd

    shr-long v14, v25, v6

    long-to-int v6, v14

    int-to-byte v6, v6

    const/16 v14, 0x14

    aput-byte v6, v0, v14

    .line 1141
    long-to-int v6, v11

    int-to-byte v6, v6

    const/16 v14, 0x15

    aput-byte v6, v0, v14

    .line 1142
    shr-long v13, v11, v13

    long-to-int v6, v13

    int-to-byte v6, v6

    const/16 v13, 0x16

    aput-byte v6, v0, v13

    .line 1143
    shr-long v5, v11, v5

    shl-long v13, v30, v8

    or-long/2addr v5, v13

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x17

    aput-byte v5, v0, v6

    .line 1144
    shr-long v5, v30, v27

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x18

    aput-byte v5, v0, v6

    .line 1145
    const/16 v5, 0xb

    shr-long v5, v30, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x19

    aput-byte v5, v0, v6

    .line 1146
    const/16 v5, 0x13

    shr-long v5, v30, v5

    const/4 v7, 0x2

    shl-long v7, v32, v7

    or-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x1a

    aput-byte v5, v0, v6

    .line 1147
    shr-long v5, v32, v24

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x1b

    aput-byte v5, v0, v6

    .line 1148
    const/16 v5, 0xe

    shr-long v5, v32, v5

    const/4 v7, 0x7

    shl-long v7, v34, v7

    or-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x1c

    aput-byte v5, v0, v6

    .line 1149
    shr-long v5, v34, v21

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x1d

    aput-byte v5, v0, v6

    .line 1150
    const/16 v5, 0x9

    shr-long v5, v34, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x1e

    aput-byte v5, v0, v6

    .line 1151
    const/16 v5, 0x11

    shr-long v5, v34, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x1f

    aput-byte v5, v0, v6

    .line 1152
    return-void
.end method

.method private static scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .locals 9
    .param p0, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 578
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 579
    .local v0, "e":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 580
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x0

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 581
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 590
    .local v1, "carry":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 591
    aget-byte v3, v0, v2

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 592
    aget-byte v3, v0, v2

    add-int/lit8 v3, v3, 0x8

    .line 593
    .end local v1    # "carry":I
    .local v3, "carry":I
    shr-int/lit8 v1, v3, 0x4

    .line 594
    .end local v3    # "carry":I
    .restart local v1    # "carry":I
    aget-byte v3, v0, v2

    shl-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 596
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v0, v2

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 598
    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 599
    .local v2, "ret":Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    new-instance v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v3}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>()V

    .line 604
    .local v3, "xyzt":Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 605
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    sget-object v6, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v5, v6}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 606
    .local v5, "t":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    div-int/lit8 v6, v4, 0x2

    aget-byte v7, v0, v4

    invoke-static {v5, v6, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V

    .line 607
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v6

    invoke-static {v2, v6, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 604
    .end local v5    # "t":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 612
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v4}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>()V

    .line 613
    .local v4, "xyz":Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 614
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 615
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 616
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 619
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 620
    new-instance v6, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    sget-object v7, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v6, v7}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 621
    .local v6, "t":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    div-int/lit8 v7, v5, 0x2

    aget-byte v8, v0, v5

    invoke-static {v6, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V

    .line 622
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 619
    .end local v6    # "t":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 627
    .end local v5    # "i":I
    :cond_3
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v5, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 628
    .local v5, "result":Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    invoke-virtual {v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->isOnCurve()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 631
    return-object v5

    .line 629
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "arithmetic error in scalar multiplication"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static scalarMultWithBaseToBytes([B)[B
    .locals 1
    .param p0, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 643
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V
    .locals 6
    .param p0, "t"    # Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    .param p1, "pos"    # I
    .param p2, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "pos",
            "b"
        }
    .end annotation

    .line 547
    and-int/lit16 v0, p2, 0xff

    const/4 v1, 0x7

    shr-int/2addr v0, v1

    .line 548
    .local v0, "bnegative":I
    neg-int v2, v0

    and-int/2addr v2, p2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    sub-int v2, p2, v2

    .line 550
    .local v2, "babs":I
    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 551
    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v4, v4, p1

    aget-object v3, v4, v3

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 552
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 553
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 554
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 555
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    const/4 v4, 0x6

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 556
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 557
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v1, v3, v1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 559
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    const/16 v3, 0xa

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 560
    .local v1, "yPlusX":[J
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 561
    .local v4, "yMinusX":[J
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 562
    .local v3, "t2d":[J
    invoke-static {v3, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->neg([J[J)V

    .line 563
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v5, v1, v4, v3}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>([J[J[J)V

    .line 564
    .local v5, "minust":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    invoke-virtual {p0, v5, v0}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 565
    return-void
.end method

.method static sign([B[B[B)[B
    .locals 8
    .param p0, "message"    # [B
    .param p1, "publicKey"    # [B
    .param p2, "hashedPrivateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "publicKey",
            "hashedPrivateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1535
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1536
    .local v0, "messageCopy":[B
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v3, "SHA-512"

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    .line 1537
    .local v2, "digest":Ljava/security/MessageDigest;
    const/16 v3, 0x20

    invoke-virtual {v2, p2, v3, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1538
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1539
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 1540
    .local v4, "r":[B
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1542
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Ed25519;->scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object v5

    invoke-static {v5, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1543
    .local v5, "rB":[B
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 1544
    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1545
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1546
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1547
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 1548
    .local v6, "hram":[B
    invoke-static {v6}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1549
    new-array v3, v3, [B

    .line 1550
    .local v3, "s":[B
    invoke-static {v3, v6, p2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->mulAdd([B[B[B[B)V

    .line 1551
    const/4 v7, 0x2

    new-array v7, v7, [[B

    aput-object v5, v7, v1

    const/4 v1, 0x1

    aput-object v3, v7, v1

    invoke-static {v7}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static slide([B)[B
    .locals 8
    .param p0, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 648
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 652
    .local v1, "r":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    .line 653
    shr-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v2, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 658
    aget-byte v4, v1, v2

    if-eqz v4, :cond_4

    .line 659
    const/4 v4, 0x1

    .local v4, "b":I
    :goto_2
    const/4 v5, 0x6

    if-gt v4, v5, :cond_4

    add-int v5, v2, v4

    if-ge v5, v0, :cond_4

    .line 660
    add-int v5, v2, v4

    aget-byte v5, v1, v5

    if-eqz v5, :cond_3

    .line 661
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    const/16 v6, 0xf

    const/4 v7, 0x0

    if-gt v5, v6, :cond_1

    .line 662
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 663
    add-int v5, v2, v4

    aput-byte v7, v1, v5

    goto :goto_4

    .line 664
    :cond_1
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    sub-int/2addr v5, v6

    const/16 v6, -0xf

    if-lt v5, v6, :cond_4

    .line 665
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 666
    add-int v5, v2, v4

    .local v5, "k":I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 667
    aget-byte v6, v1, v5

    if-nez v6, :cond_2

    .line 668
    aput-byte v3, v1, v5

    .line 669
    goto :goto_4

    .line 671
    :cond_2
    aput-byte v7, v1, v5

    .line 666
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 659
    .end local v5    # "k":I
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 657
    .end local v4    # "b":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 680
    .end local v2    # "i":I
    :cond_5
    return-object v1
.end method

.method private static sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V
    .locals 4
    .param p0, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .param p1, "extended"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .param p2, "cached"    # Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "extended",
            "cached"
        }
    .end annotation

    .line 432
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 435
    .local v0, "t":[J
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 438
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 441
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 444
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 447
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->t:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 450
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->multByZ([J[J)V

    .line 453
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 456
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 459
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 462
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 465
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 466
    return-void
.end method

.method static verify([B[B[B)Z
    .locals 11
    .param p0, "message"    # [B
    .param p1, "signature"    # [B
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "signature",
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1592
    array-length v0, p1

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1593
    return v2

    .line 1595
    :cond_0
    const/16 v0, 0x20

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1596
    .local v1, "s":[B
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519;->isSmallerThanGroupOrder([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1597
    return v2

    .line 1599
    :cond_1
    sget-object v3, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v4, "SHA-512"

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/MessageDigest;

    .line 1600
    .local v3, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v3, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 1601
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 1602
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1603
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 1604
    .local v4, "h":[B
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1606
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$500([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v5

    .line 1607
    .local v5, "negPublicKey":Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    invoke-static {v4, v5, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleScalarMultVarTime([BLcom/google/crypto/tink/subtle/Ed25519$XYZT;[B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v6

    .line 1608
    .local v6, "xyz":Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    invoke-virtual {v6}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object v7

    .line 1609
    .local v7, "expectedR":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_3

    .line 1610
    aget-byte v9, v7, v8

    aget-byte v10, p1, v8

    if-eq v9, v10, :cond_2

    .line 1611
    return v2

    .line 1609
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1614
    .end local v8    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
