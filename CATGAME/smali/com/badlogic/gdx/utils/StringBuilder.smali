.class public Lcom/badlogic/gdx/utils/StringBuilder;
.super Ljava/lang/Object;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final INITIAL_CAPACITY:I = 0x10

.field private static final digits:[C


# instance fields
.field public chars:[C

.field public length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-ltz p1, :cond_0

    .line 74
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 75
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 88
    add-int/lit8 v1, v0, 0x10

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 89
    iget-object v2, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 99
    add-int/lit8 v1, v0, 0x10

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 100
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 101
    return-void
.end method

.method private enlargeBuffer(I)V
    .locals 5
    .param p1, "min"    # I

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    shr-int/lit8 v1, v1, 0x1

    array-length v0, v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    .line 105
    .local v1, "newSize":I
    if-le p1, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v0, v0, [C

    .line 106
    .local v0, "newData":[C
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 108
    return-void
.end method

.method private move(II)V
    .locals 7
    .param p1, "size"    # I
    .param p2, "index"    # I

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    .line 330
    add-int v1, p2, p1

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    return-void

    .line 333
    :cond_0
    add-int/2addr v2, p1

    .local v2, "a":I
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    .line 334
    .local v0, "b":I
    if-le v2, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 335
    .local v1, "newSize":I
    :goto_0
    new-array v3, v1, [C

    .line 336
    .local v3, "newData":[C
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v5, p2, p1

    iget v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v6, p2

    invoke-static {v4, p2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 340
    return-void
.end method

.method public static numChars(II)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "radix"    # I

    .line 37
    if-gez p0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 38
    .local v0, "result":I
    :goto_0
    div-int v1, p0, p1

    move p0, v1

    if-eqz v1, :cond_1

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    return v0
.end method

.method public static numChars(JI)I
    .locals 5
    .param p0, "value"    # J
    .param p2, "radix"    # I

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 46
    .local v2, "result":I
    :goto_0
    int-to-long v3, p2

    div-long v3, p0, v3

    move-wide p0, v3

    cmp-long v3, v3, v0

    if-eqz v3, :cond_1

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return v2
.end method


# virtual methods
.method public append(C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "c"    # C

    .line 753
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 754
    return-object p0
.end method

.method public append(D)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "d"    # D

    .line 894
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 895
    return-object p0
.end method

.method public append(F)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "f"    # F

    .line 883
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 884
    return-object p0
.end method

.method public append(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "minLength"    # I

    .line 775
    const/16 v0, 0x30

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 8
    .param p1, "value"    # I
    .param p2, "minLength"    # I
    .param p3, "prefix"    # C

    .line 787
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 788
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 789
    return-object p0

    .line 791
    :cond_0
    if-gez p1, :cond_1

    .line 792
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 793
    neg-int p1, p1

    .line 795
    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0xa

    if-le p2, v0, :cond_2

    .line 796
    invoke-static {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(II)I

    move-result v0

    sub-int v0, p2, v0

    .local v0, "j":I
    :goto_0
    if-lez v0, :cond_2

    .line 797
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 796
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 799
    .end local v0    # "j":I
    :cond_2
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_8

    .line 800
    const v2, 0x3b9aca00

    if-lt p1, v2, :cond_3

    sget-object v3, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    int-to-long v4, p1

    const-wide v6, 0x2540be400L

    rem-long/2addr v4, v6

    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v4, v6

    long-to-int v4, v4

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 801
    :cond_3
    const v3, 0x5f5e100

    if-lt p1, v3, :cond_4

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v3

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 802
    :cond_4
    const v2, 0x989680

    if-lt p1, v2, :cond_5

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v3, p1, v3

    div-int/2addr v3, v2

    aget-char v3, v4, v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 803
    :cond_5
    const v3, 0xf4240

    if-lt p1, v3, :cond_6

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v3

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 804
    :cond_6
    const v2, 0x186a0

    if-lt p1, v2, :cond_7

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v3, p1, v3

    div-int/2addr v3, v2

    aget-char v3, v4, v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 805
    :cond_7
    sget-object v3, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int v2, p1, v2

    div-int/2addr v2, v0

    aget-char v0, v3, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 807
    :cond_8
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_9

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit16 v3, p1, 0x2710

    div-int/2addr v3, v0

    aget-char v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 808
    :cond_9
    const/16 v0, 0x64

    if-lt p1, v0, :cond_a

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit16 v3, p1, 0x3e8

    div-int/2addr v3, v0

    aget-char v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 809
    :cond_a
    if-lt p1, v1, :cond_b

    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit8 v2, p1, 0x64

    div-int/2addr v2, v1

    aget-char v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 810
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-int/lit8 v1, p1, 0xa

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 811
    return-object p0
.end method

.method public append(J)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(JI)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "value"    # J
    .param p3, "minLength"    # I

    .line 830
    const/16 v0, 0x30

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 9
    .param p1, "value"    # J
    .param p3, "minLength"    # I
    .param p4, "prefix"    # C

    .line 841
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 842
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 843
    return-object p0

    .line 845
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 846
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 847
    neg-long p1, p1

    .line 849
    :cond_1
    const/4 v0, 0x1

    if-le p3, v0, :cond_2

    .line 850
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(JI)I

    move-result v0

    sub-int v0, p3, v0

    .local v0, "j":I
    :goto_0
    if-lez v0, :cond_2

    .line 851
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 850
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 853
    .end local v0    # "j":I
    :cond_2
    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-ltz v2, :cond_11

    .line 854
    const-wide v2, 0xde0b6b3a7640000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_3

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    long-to-double v5, p1

    const-wide v7, 0x43e158e460913d00L    # 1.0E19

    rem-double/2addr v5, v7

    const-wide v7, 0x43abc16d674ec800L    # 1.0E18

    div-double/2addr v5, v7

    double-to-int v5, v5

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 855
    :cond_3
    const-wide v4, 0x16345785d8a0000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_4

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 856
    :cond_4
    const-wide v2, 0x2386f26fc10000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_5

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 857
    :cond_5
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_6

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 858
    :cond_6
    const-wide v2, 0x5af3107a4000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_7

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 859
    :cond_7
    const-wide v4, 0x9184e72a000L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_8

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 860
    :cond_8
    const-wide v2, 0xe8d4a51000L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_9

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 861
    :cond_9
    const-wide v4, 0x174876e800L

    cmp-long v6, p1, v4

    if-ltz v6, :cond_a

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 862
    :cond_a
    const-wide v2, 0x2540be400L

    cmp-long v6, p1, v2

    if-ltz v6, :cond_b

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 863
    :cond_b
    const-wide/32 v4, 0x3b9aca00

    cmp-long v6, p1, v4

    if-ltz v6, :cond_c

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 864
    :cond_c
    const-wide/32 v2, 0x5f5e100

    cmp-long v6, p1, v2

    if-ltz v6, :cond_d

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 865
    :cond_d
    const-wide/32 v4, 0x989680

    cmp-long v6, p1, v4

    if-ltz v6, :cond_e

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 866
    :cond_e
    const-wide/32 v2, 0xf4240

    cmp-long v6, p1, v2

    if-ltz v6, :cond_f

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v4, p1, v4

    div-long/2addr v4, v2

    long-to-int v4, v4

    aget-char v4, v6, v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 867
    :cond_f
    const-wide/32 v4, 0x186a0

    cmp-long v6, p1, v4

    if-ltz v6, :cond_10

    sget-object v6, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v4

    long-to-int v2, v2

    aget-char v2, v6, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 868
    :cond_10
    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v3, p1, v4

    div-long/2addr v3, v0

    long-to-int v3, v3

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 870
    :cond_11
    const-wide/16 v2, 0x3e8

    cmp-long v4, p1, v2

    if-ltz v4, :cond_12

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    aget-char v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 871
    :cond_12
    const-wide/16 v0, 0x64

    cmp-long v4, p1, v0

    if-ltz v4, :cond_13

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v2, v2

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 872
    :cond_13
    const-wide/16 v2, 0xa

    cmp-long v4, p1, v2

    if-ltz v4, :cond_14

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v0, v0

    aget-char v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 873
    :cond_14
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->digits:[C

    rem-long v1, p1, v2

    long-to-int v1, v1

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 874
    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 3
    .param p1, "builder"    # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 976
    if-nez p1, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_0

    .line 979
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 980
    :goto_0
    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "builder"    # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 998
    if-nez p1, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 1002
    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 4
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 964
    if-nez p1, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_0

    .line 966
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v0, :cond_1

    .line 967
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/StringBuilder;

    .line 968
    .local v0, "builder":Lcom/badlogic/gdx/utils/StringBuilder;
    iget-object v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    iget v3, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 969
    .end local v0    # "builder":Lcom/badlogic/gdx/utils/StringBuilder;
    goto :goto_0

    .line 970
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 972
    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 993
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    .line 994
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 905
    if-nez p1, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    goto :goto_0

    .line 908
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 910
    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 918
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 919
    return-object p0
.end method

.method public append(Z)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "b"    # Z

    .line 742
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 743
    return-object p0
.end method

.method public append([C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "ch"    # [C

    .line 940
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    .line 941
    return-object p0
.end method

.method public append([CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 954
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([CII)V

    .line 955
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method final append0(C)V
    .locals 3
    .param p1, "ch"    # C

    .line 148
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 149
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char p1, v0, v1

    .line 152
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 169
    if-nez p1, :cond_0

    .line 170
    const-string p1, "null"

    .line 172
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    .line 176
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 177
    return-void

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final append0(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->appendNull()V

    .line 157
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 160
    .local v0, "adding":I
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    .line 161
    .local v1, "newSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 162
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 164
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 165
    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 166
    return-void
.end method

.method final append0([C)V
    .locals 5
    .param p1, "value"    # [C

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p1

    add-int/2addr v0, v1

    .line 123
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 124
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 126
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 128
    return-void
.end method

.method final append0([CII)V
    .locals 3
    .param p1, "value"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 132
    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p2, :cond_2

    .line 135
    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    .line 139
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p3

    .line 140
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 141
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 145
    return-void

    .line 136
    .end local v0    # "newSize":I
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendCodePoint(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "codePoint"    # I

    .line 1012
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0([C)V

    .line 1013
    return-object p0
.end method

.method public appendLine(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 928
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(Ljava/lang/String;)V

    .line 929
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append0(C)V

    .line 930
    return-object p0
.end method

.method final appendNull()V
    .locals 5

    .line 111
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x4

    .line 112
    .local v0, "newSize":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 113
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v4, 0x6e

    aput-char v4, v1, v2

    .line 116
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v4, 0x75

    aput-char v4, v1, v3

    .line 117
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/16 v4, 0x6c

    aput-char v4, v1, v2

    .line 118
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char v4, v1, v3

    .line 119
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 194
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v0, v0, p1

    return v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 1041
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1042
    return-void
.end method

.method public codePointAt(I)I
    .locals 2
    .param p1, "index"    # I

    .line 683
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_0

    .line 686
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p1, v0}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public codePointBefore(I)I
    .locals 1
    .param p1, "index"    # I

    .line 698
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0

    .line 699
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public codePointCount(II)I
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 715
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    .line 718
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "subString"    # Ljava/lang/String;

    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsIgnoreCase(Ljava/lang/String;)Z
    .locals 3
    .param p1, "subString"    # Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOfIgnoreCase(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1024
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->delete0(II)V

    .line 1025
    return-object p0
.end method

.method final delete0(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 201
    if-ltz p1, :cond_3

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_0

    .line 203
    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 205
    :cond_0
    if-ne p2, p1, :cond_1

    .line 206
    return-void

    .line 208
    :cond_1
    if-le p2, p1, :cond_3

    .line 209
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v0, p2

    .line 210
    .local v0, "count":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int v2, p2, p1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 212
    return-void

    .line 215
    .end local v0    # "count":I
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public deleteCharAt(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "index"    # I

    .line 1035
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->deleteCharAt0(I)V

    .line 1036
    return-object p0
.end method

.method final deleteCharAt0(I)V
    .locals 3
    .param p1, "location"    # I

    .line 219
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_1

    .line 222
    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 223
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 227
    return-void

    .line 220
    .end local v0    # "count":I
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "min"    # I

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    if-le p1, v1, :cond_1

    .line 237
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    .line 238
    .local v0, "twice":I
    if-le v0, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    .line 240
    .end local v0    # "twice":I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1266
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1267
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1268
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 1269
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1270
    .local v2, "other":Lcom/badlogic/gdx/utils/StringBuilder;
    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1271
    .local v3, "length":I
    iget v4, v2, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v3, v4, :cond_3

    return v1

    .line 1272
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .local v4, "chars":[C
    iget-object v5, v2, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1273
    .local v5, "chars2":[C
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_5

    .line 1274
    aget-char v7, v4, v6

    aget-char v8, v5, v6

    if-eq v7, v8, :cond_4

    return v1

    .line 1273
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1275
    .end local v6    # "i":I
    :cond_5
    return v0
.end method

.method public equalsIgnoreCase(Lcom/badlogic/gdx/utils/StringBuilder;)Z
    .locals 9
    .param p1, "other"    # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1280
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1281
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1282
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1283
    .local v2, "length":I
    iget v3, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1284
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .local v3, "chars":[C
    iget-object v4, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1285
    .local v4, "chars2":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 1286
    aget-char v6, v3, v5

    .line 1287
    .local v6, "c":C
    aget-char v7, v4, v5

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 1288
    .local v7, "upper":C
    if-eq v6, v7, :cond_3

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v6, v8, :cond_3

    return v1

    .line 1285
    .end local v6    # "c":C
    .end local v7    # "upper":C
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1290
    .end local v5    # "i":I
    :cond_4
    return v0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/String;

    .line 1295
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1296
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 1297
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 1298
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 1299
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1300
    aget-char v4, v2, v3

    .line 1301
    .local v4, "c":C
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1302
    .local v5, "upper":C
    if-eq v4, v5, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v4, v6, :cond_2

    return v0

    .line 1299
    .end local v4    # "c":C
    .end local v5    # "upper":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1304
    .end local v3    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destStart"    # I

    .line 252
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final getValue()[C
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1258
    const/16 v0, 0x1f

    .line 1259
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1260
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v2, 0x1f

    .line 1261
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([C)I

    move-result v3

    add-int/2addr v1, v3

    .line 1262
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 10
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 538
    if-gez p2, :cond_0

    .line 539
    const/4 p2, 0x0

    .line 541
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 542
    .local v0, "subCount":I
    if-nez v0, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, v1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v1, p2

    :cond_2
    return v1

    .line 543
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v0

    .line 544
    .local v1, "maxIndex":I
    const/4 v2, -0x1

    if-le p2, v1, :cond_4

    return v2

    .line 545
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 547
    .local v3, "firstChar":C
    :goto_0
    move v4, p2

    .line 548
    .local v4, "i":I
    const/4 v5, 0x0

    .line 549
    .local v5, "found":Z
    :goto_1
    if-gt v4, v1, :cond_6

    .line 550
    iget-object v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v6, v6, v4

    if-ne v6, v3, :cond_5

    .line 551
    const/4 v5, 0x1

    .line 552
    goto :goto_2

    .line 549
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 555
    :cond_6
    :goto_2
    if-nez v5, :cond_7

    return v2

    .line 556
    :cond_7
    move v6, v4

    .local v6, "o1":I
    const/4 v7, 0x0

    .line 557
    .local v7, "o2":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v0, :cond_8

    iget-object v8, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v6, v6, 0x1

    aget-char v8, v8, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_8

    goto :goto_3

    .line 560
    :cond_8
    if-ne v7, v0, :cond_9

    return v4

    .line 561
    :cond_9
    add-int/lit8 p2, v4, 0x1

    .line 562
    .end local v4    # "i":I
    .end local v5    # "found":Z
    .end local v6    # "o1":I
    .end local v7    # "o2":I
    goto :goto_0
.end method

.method public indexOfIgnoreCase(Ljava/lang/String;I)I
    .locals 12
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 566
    if-gez p2, :cond_0

    .line 567
    const/4 p2, 0x0

    .line 569
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 570
    .local v0, "subCount":I
    if-nez v0, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, v1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v1, p2

    :cond_2
    return v1

    .line 571
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v0

    .line 572
    .local v1, "maxIndex":I
    const/4 v2, -0x1

    if-le p2, v1, :cond_4

    return v2

    .line 573
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 574
    .local v3, "firstUpper":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 576
    .local v4, "firstLower":C
    :goto_0
    move v5, p2

    .line 577
    .local v5, "i":I
    const/4 v6, 0x0

    .line 578
    .local v6, "found":Z
    :goto_1
    if-gt v5, v1, :cond_7

    .line 579
    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v7, v7, v5

    .line 580
    .local v7, "c":C
    if-eq v7, v3, :cond_6

    if-ne v7, v4, :cond_5

    goto :goto_2

    .line 578
    .end local v7    # "c":C
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 581
    .restart local v7    # "c":C
    :cond_6
    :goto_2
    const/4 v6, 0x1

    .line 585
    .end local v7    # "c":C
    :cond_7
    if-nez v6, :cond_8

    return v2

    .line 586
    :cond_8
    move v7, v5

    .local v7, "o1":I
    const/4 v8, 0x0

    .line 587
    .local v8, "o2":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v0, :cond_a

    .line 588
    iget-object v9, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v7, v7, 0x1

    aget-char v9, v9, v7

    .line 589
    .local v9, "c":C
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    .line 590
    .local v10, "upper":C
    if-eq v9, v10, :cond_9

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    if-eq v9, v11, :cond_9

    goto :goto_4

    .line 591
    .end local v9    # "c":C
    .end local v10    # "upper":C
    :cond_9
    goto :goto_3

    .line 592
    :cond_a
    :goto_4
    if-ne v8, v0, :cond_b

    return v5

    .line 593
    :cond_b
    add-int/lit8 p2, v5, 0x1

    .line 594
    .end local v5    # "i":I
    .end local v6    # "found":Z
    .end local v7    # "o1":I
    .end local v8    # "o2":I
    goto :goto_0
.end method

.method public insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .line 1066
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(IC)V

    .line 1067
    return-object p0
.end method

.method public insert(ID)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .line 1118
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1119
    return-object p0
.end method

.method public insert(IF)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .line 1105
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1106
    return-object p0
.end method

.method public insert(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .line 1079
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1080
    return-object p0
.end method

.method public insert(IJ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .line 1092
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1093
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .line 1186
    if-nez p2, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1187
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 1203
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    .line 1204
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1131
    if-nez p2, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1132
    return-object p0
.end method

.method public insert(ILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 1143
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1144
    return-object p0
.end method

.method public insert(IZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .line 1053
    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 1054
    return-object p0
.end method

.method public insert(I[C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "ch"    # [C

    .line 1156
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[C)V

    .line 1157
    return-object p0
.end method

.method public insert(I[CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "offset"    # I
    .param p2, "str"    # [C
    .param p3, "strOffset"    # I
    .param p4, "strLen"    # I

    .line 1172
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(I[CII)V

    .line 1173
    return-object p0
.end method

.method final insert0(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 286
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_0

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 291
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v1, p1

    .line 292
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 293
    return-void

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 312
    if-nez p2, :cond_0

    .line 313
    const-string p2, "null"

    .line 315
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    if-gt p3, p4, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p4, v0, :cond_1

    .line 318
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 319
    return-void

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final insert0(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "string"    # Ljava/lang/String;

    .line 296
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_2

    .line 297
    if-nez p2, :cond_0

    .line 298
    const-string p2, "null"

    .line 300
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 301
    .local v0, "min":I
    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 303
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 304
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 306
    .end local v0    # "min":I
    :cond_1
    nop

    .line 309
    return-void

    .line 307
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method final insert0(I[C)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # [C

    .line 259
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    .line 262
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 263
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 264
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 267
    :cond_0
    return-void

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method final insert0(I[CII)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I

    .line 270
    if-ltz p1, :cond_2

    if-gt p1, p4, :cond_2

    .line 272
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    .line 273
    if-eqz p4, :cond_0

    .line 274
    invoke-direct {p0, p4, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 278
    :cond_0
    return-void

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", char[].length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 614
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 9
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 628
    .local v0, "subCount":I
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, -0x1

    if-gt v0, v1, :cond_8

    if-ltz p2, :cond_8

    .line 629
    if-lez v0, :cond_6

    .line 630
    sub-int v3, v1, v0

    if-le p2, v3, :cond_0

    .line 631
    sub-int p2, v1, v0

    .line 634
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 636
    .local v3, "firstChar":C
    :goto_0
    move v1, p2

    .line 637
    .local v1, "i":I
    const/4 v4, 0x0

    .line 638
    .local v4, "found":Z
    :goto_1
    if-ltz v1, :cond_2

    .line 639
    iget-object v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v5, v5, v1

    if-ne v5, v3, :cond_1

    .line 640
    const/4 v4, 0x1

    .line 641
    goto :goto_2

    .line 638
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 644
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 645
    return v2

    .line 647
    :cond_3
    move v5, v1

    .local v5, "o1":I
    const/4 v6, 0x0

    .line 648
    .local v6, "o2":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v0, :cond_4

    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v5, v5, 0x1

    aget-char v7, v7, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    goto :goto_3

    .line 651
    :cond_4
    if-ne v6, v0, :cond_5

    .line 652
    return v1

    .line 654
    :cond_5
    add-int/lit8 p2, v1, -0x1

    .line 655
    .end local v1    # "i":I
    .end local v4    # "found":Z
    .end local v5    # "o1":I
    .end local v6    # "o2":I
    goto :goto_0

    .line 657
    .end local v3    # "firstChar":C
    :cond_6
    if-ge p2, v1, :cond_7

    move v1, p2

    :cond_7
    return v1

    .line 659
    :cond_8
    return v2
.end method

.method public length()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .line 732
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method public replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 3
    .param p1, "find"    # C
    .param p2, "replace"    # Ljava/lang/String;

    .line 1236
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1237
    .local v0, "replaceLength":I
    const/4 v1, 0x0

    .line 1240
    .local v1, "index":I
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ne v1, v2, :cond_0

    return-object p0

    .line 1241
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 1244
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 1245
    add-int/2addr v1, v0

    goto :goto_0

    .line 1242
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public replace(IILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .line 1217
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 1218
    return-object p0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 4
    .param p1, "find"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;

    .line 1223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "findLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1224
    .local v1, "replaceLength":I
    const/4 v2, 0x0

    .line 1226
    .local v2, "index":I
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1227
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1231
    return-object p0

    .line 1228
    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p0, v2, v3, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 1229
    add-int/2addr v2, v1

    goto :goto_0
.end method

.method final replace0(IILjava/lang/String;)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "string"    # Ljava/lang/String;

    .line 343
    if-ltz p1, :cond_5

    .line 344
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_0

    .line 345
    iget p2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 347
    :cond_0
    if-le p2, p1, :cond_3

    .line 348
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 349
    .local v0, "stringLength":I
    sub-int v1, p2, p1

    sub-int/2addr v1, v0

    .line 350
    .local v1, "diff":I
    if-lez v1, :cond_1

    .line 352
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v3, p1, v0

    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v4, p2

    invoke-static {v2, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 353
    :cond_1
    if-gez v1, :cond_2

    .line 355
    neg-int v2, v1

    invoke-direct {p0, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->move(II)V

    .line 357
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p3, v2, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 358
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 359
    return-void

    .line 361
    .end local v0    # "stringLength":I
    .end local v1    # "diff":I
    :cond_3
    if-ne p1, p2, :cond_5

    .line 362
    if-eqz p3, :cond_4

    .line 365
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 366
    return-void

    .line 363
    :cond_4
    const/4 v0, 0x0

    throw v0

    .line 369
    :cond_5
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public reverse()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    .line 1253
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->reverse0()V

    .line 1254
    return-object p0
.end method

.method final reverse0()V
    .locals 18

    .line 373
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 377
    .local v3, "end":I
    iget-object v4, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v5, 0x0

    aget-char v6, v4, v5

    .line 378
    .local v6, "frontHigh":C
    aget-char v4, v4, v3

    .line 379
    .local v4, "endLow":C
    const/4 v7, 0x1

    .local v7, "allowFrontSur":Z
    const/4 v8, 0x1

    .line 380
    .local v8, "allowEndSur":Z
    const/4 v9, 0x0

    .local v9, "i":I
    div-int/2addr v1, v2

    .local v1, "mid":I
    :goto_0
    if-ge v9, v1, :cond_7

    .line 381
    iget-object v10, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v11, v9, 0x1

    aget-char v11, v10, v11

    .line 382
    .local v11, "frontLow":C
    add-int/lit8 v12, v3, -0x1

    aget-char v10, v10, v12

    .line 383
    .local v10, "endHigh":C
    const v12, 0xdbff

    const v13, 0xd800

    const v14, 0xdfff

    const v15, 0xdc00

    if-eqz v7, :cond_1

    if-lt v11, v15, :cond_1

    if-gt v11, v14, :cond_1

    if-lt v6, v13, :cond_1

    if-gt v6, v12, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    move/from16 v16, v5

    :goto_1
    move/from16 v17, v16

    .line 385
    .local v17, "surAtFront":Z
    move/from16 v5, v17

    .end local v17    # "surAtFront":Z
    .local v5, "surAtFront":Z
    if-eqz v5, :cond_2

    iget v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v14, 0x3

    if-ge v2, v14, :cond_2

    .line 386
    return-void

    .line 388
    :cond_2
    if-eqz v8, :cond_3

    if-lt v10, v13, :cond_3

    if-gt v10, v12, :cond_3

    if-lt v4, v15, :cond_3

    const v2, 0xdfff

    if-gt v4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 389
    .local v2, "surAtEnd":Z
    :goto_2
    const/4 v12, 0x1

    move v8, v12

    move v7, v12

    .line 390
    if-ne v5, v2, :cond_5

    .line 391
    if-eqz v5, :cond_4

    .line 393
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v11, v12, v3

    .line 394
    add-int/lit8 v13, v3, -0x1

    aput-char v6, v12, v13

    .line 395
    aput-char v10, v12, v9

    .line 396
    add-int/lit8 v13, v9, 0x1

    aput-char v4, v12, v13

    .line 397
    add-int/lit8 v13, v9, 0x2

    aget-char v6, v12, v13

    .line 398
    add-int/lit8 v13, v3, -0x2

    aget-char v4, v12, v13

    .line 399
    add-int/lit8 v9, v9, 0x1

    .line 400
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 403
    :cond_4
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v6, v12, v3

    .line 404
    aput-char v4, v12, v9

    .line 405
    move v6, v11

    .line 406
    move v4, v10

    goto :goto_3

    .line 409
    :cond_5
    if-eqz v5, :cond_6

    .line 411
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v11, v12, v3

    .line 412
    aput-char v4, v12, v9

    .line 413
    move v4, v10

    .line 414
    const/4 v7, 0x0

    goto :goto_3

    .line 417
    :cond_6
    iget-object v12, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char v6, v12, v3

    .line 418
    aput-char v10, v12, v9

    .line 419
    move v6, v11

    .line 420
    const/4 v8, 0x0

    .line 380
    .end local v2    # "surAtEnd":Z
    .end local v5    # "surAtFront":Z
    .end local v10    # "endHigh":C
    .end local v11    # "frontLow":C
    :goto_3
    const/4 v2, 0x1

    add-int/2addr v9, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x1

    .line 424
    .end local v1    # "mid":I
    .end local v9    # "i":I
    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    if-eqz v7, :cond_8

    if-nez v8, :cond_a

    .line 425
    :cond_8
    iget-object v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    if-eqz v7, :cond_9

    move v2, v4

    goto :goto_4

    :cond_9
    move v2, v6

    :goto_4
    aput-char v2, v1, v3

    .line 427
    :cond_a
    return-void
.end method

.method public setCharAt(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 435
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v0, p1

    .line 439
    return-void

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setLength(I)V
    .locals 3
    .param p1, "newLength"    # I

    .line 448
    if-ltz p1, :cond_2

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 452
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->enlargeBuffer(I)V

    goto :goto_0

    .line 454
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v1, p1, :cond_1

    .line 455
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 458
    :cond_1
    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    .line 459
    return-void

    .line 449
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I

    .line 467
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    .line 468
    if-ne p1, v0, :cond_0

    .line 469
    const-string v0, ""

    return-object v0

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 475
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 486
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_1

    .line 487
    if-ne p1, p2, :cond_0

    .line 488
    const-string v0, ""

    return-object v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 494
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 502
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public trimToSize()V
    .locals 4

    .line 667
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 668
    new-array v2, v0, [C

    .line 669
    .local v2, "newValue":[C
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    iput-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    .line 672
    .end local v2    # "newValue":[C
    :cond_0
    return-void
.end method
