.class public Lorg/apache/commons/lang3/mutable/MutableShort;
.super Ljava/lang/Number;
.source "MutableShort.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableShort;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 79
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 56
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 200
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 201
    return-void
.end method

.method public add(S)V
    .locals 1
    .param p1, "operand"    # S

    .line 189
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 190
    return-void
.end method

.method public addAndGet(Ljava/lang/Number;)S
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 247
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 248
    return v0
.end method

.method public addAndGet(S)S
    .locals 1
    .param p1, "operand"    # S

    .line 233
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 234
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->compareTo(Lorg/apache/commons/lang3/mutable/MutableShort;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableShort;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/commons/lang3/mutable/MutableShort;

    .line 378
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short v1, p1, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .locals 1

    .line 153
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 154
    return-void
.end method

.method public decrementAndGet()S
    .locals 1

    .line 177
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 178
    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 329
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 353
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 354
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang3/mutable/MutableShort;

    invoke-virtual {v2}, Lorg/apache/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 356
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 319
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)S
    .locals 3
    .param p1, "operand"    # Ljava/lang/Number;

    .line 275
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 276
    .local v0, "last":S
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 277
    return v0
.end method

.method public getAndAdd(S)S
    .locals 2
    .param p1, "operand"    # S

    .line 260
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 261
    .local v0, "last":S
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 262
    return v0
.end method

.method public getAndDecrement()S
    .locals 2

    .line 164
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 165
    .local v0, "last":S
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 166
    return v0
.end method

.method public getAndIncrement()S
    .locals 2

    .line 130
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 131
    .local v0, "last":S
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 132
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableShort;->getValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Short;
    .locals 1

    .line 89
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 366
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public increment()V
    .locals 1

    .line 119
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 120
    return-void
.end method

.method public incrementAndGet()S
    .locals 1

    .line 143
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 144
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 299
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 309
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 110
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public setValue(S)V
    .locals 0
    .param p1, "value"    # S

    .line 98
    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 99
    return-void
.end method

.method public shortValue()S
    .locals 1

    .line 289
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 221
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 222
    return-void
.end method

.method public subtract(S)V
    .locals 1
    .param p1, "operand"    # S

    .line 210
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 211
    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 389
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
