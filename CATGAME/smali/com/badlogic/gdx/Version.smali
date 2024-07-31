.class public Lcom/badlogic/gdx/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final MAJOR:I

.field public static final MINOR:I

.field public static final REVISION:I

.field public static final VERSION:Ljava/lang/String; = "1.9.10"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    :try_start_0
    const-string v0, "1.9.10"

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "v":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    sput v1, Lcom/badlogic/gdx/Version;->MAJOR:I

    .line 41
    array-length v1, v0

    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    sput v1, Lcom/badlogic/gdx/Version;->MINOR:I

    .line 42
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    :goto_2
    goto :goto_3

    :cond_2
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :goto_3
    sput v3, Lcom/badlogic/gdx/Version;->REVISION:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v0    # "v":[Ljava/lang/String;
    nop

    .line 48
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 46
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Invalid version 1.9.10"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHigher(III)Z
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "revision"    # I

    .line 51
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/Version;->isHigherEqual(III)Z

    move-result v0

    return v0
.end method

.method public static isHigherEqual(III)Z
    .locals 3
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "revision"    # I

    .line 55
    sget v0, Lcom/badlogic/gdx/Version;->MAJOR:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p0, :cond_1

    .line 56
    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 57
    :cond_1
    sget v0, Lcom/badlogic/gdx/Version;->MINOR:I

    if-eq v0, p1, :cond_3

    .line 58
    if-le v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 59
    :cond_3
    sget v0, Lcom/badlogic/gdx/Version;->REVISION:I

    if-lt v0, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isLower(III)Z
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "revision"    # I

    .line 63
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/Version;->isLowerEqual(III)Z

    move-result v0

    return v0
.end method

.method public static isLowerEqual(III)Z
    .locals 3
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .param p2, "revision"    # I

    .line 67
    sget v0, Lcom/badlogic/gdx/Version;->MAJOR:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p0, :cond_1

    .line 68
    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 69
    :cond_1
    sget v0, Lcom/badlogic/gdx/Version;->MINOR:I

    if-eq v0, p1, :cond_3

    .line 70
    if-ge v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 71
    :cond_3
    sget v0, Lcom/badlogic/gdx/Version;->REVISION:I

    if-gt v0, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method
