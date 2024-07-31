.class Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/Ed25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XYZ"
.end annotation


# instance fields
.field final x:[J

.field final y:[J

.field final z:[J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 81
    const/16 v0, 0xa

    new-array v1, v0, [J

    new-array v2, v0, [J

    new-array v0, v0, [J

    invoke-direct {p0, v1, v2, v0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>([J[J[J)V

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V
    .locals 0
    .param p1, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialXYZT"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>()V

    .line 98
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    .line 99
    return-void
.end method

.method constructor <init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V
    .locals 2
    .param p1, "xyz"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xyz"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget-object v0, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    .line 92
    iget-object v0, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    .line 93
    iget-object v0, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    .line 94
    return-void
.end method

.method constructor <init>([J[J[J)V
    .locals 0
    .param p1, "x"    # [J
    .param p2, "y"    # [J
    .param p3, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    .line 86
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    .line 87
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    .line 88
    return-void
.end method

.method static fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .locals 3
    .param p0, "out"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .param p1, "in"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
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

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 107
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v1, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 108
    return-object p0
.end method


# virtual methods
.method isOnCurve()Z
    .locals 8

    .line 128
    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 129
    .local v1, "x2":[J
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 130
    new-array v2, v0, [J

    .line 131
    .local v2, "y2":[J
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 132
    new-array v3, v0, [J

    .line 133
    .local v3, "z2":[J
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v3, v4}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 134
    new-array v4, v0, [J

    .line 135
    .local v4, "z4":[J
    invoke-static {v4, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 136
    new-array v5, v0, [J

    .line 138
    .local v5, "lhs":[J
    invoke-static {v5, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 140
    invoke-static {v5, v5, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 141
    new-array v0, v0, [J

    .line 143
    .local v0, "rhs":[J
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 145
    sget-object v6, Lcom/google/crypto/tink/subtle/Ed25519Constants;->D:[J

    invoke-static {v0, v0, v6}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 147
    invoke-static {v0, v4}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J)V

    .line 150
    invoke-static {v0, v0}, Lcom/google/crypto/tink/subtle/Field25519;->reduce([J[J)V

    .line 152
    invoke-static {v5}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v6

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v6

    return v6
.end method

.method toBytes()[B
    .locals 7

    .line 115
    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 116
    .local v1, "recip":[J
    new-array v2, v0, [J

    .line 117
    .local v2, "x":[J
    new-array v0, v0, [J

    .line 118
    .local v0, "y":[J
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Field25519;->inverse([J[J)V

    .line 119
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v2, v3, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 120
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v0, v3, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 121
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v3

    .line 122
    .local v3, "s":[B
    const/16 v4, 0x1f

    aget-byte v5, v3, v4

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Ed25519;->access$000([J)I

    move-result v6

    shl-int/lit8 v6, v6, 0x7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 123
    return-object v3
.end method
