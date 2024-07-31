.class Lorg/apache/commons/collections4/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 64
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 84
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 111
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 112
    return v0

    .line 114
    :cond_0
    if-gez p2, :cond_1

    .line 115
    const/4 p2, 0x0

    .line 117
    :cond_1
    if-nez p1, :cond_4

    .line 118
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 119
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    .line 120
    return v1

    .line 118
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 124
    :cond_4
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 125
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 126
    return v1

    .line 124
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    .end local v1    # "i":I
    :cond_6
    :goto_2
    return v0
.end method
