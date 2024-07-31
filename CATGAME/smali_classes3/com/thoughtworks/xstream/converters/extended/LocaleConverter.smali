.class public Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "LocaleConverter.java"


# static fields
.field static synthetic class$java$util$Locale:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 27
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private underscorePositions(Ljava/lang/String;)[I
    .locals 5
    .param p1, "in"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 51
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 52
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    .line 53
    .local v2, "last":I
    :goto_1
    const/16 v3, 0x5f

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    aput v3, v0, v1

    .line 51
    .end local v2    # "last":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 27
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->class$java$util$Locale:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Locale"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->class$java$util$Locale:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->underscorePositions(Ljava/lang/String;)[I

    move-result-object v0

    .line 33
    .local v0, "underscorePositions":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 34
    move-object v1, p1

    .line 35
    .local v1, "language":Ljava/lang/String;
    const-string v2, ""

    .line 36
    .local v2, "country":Ljava/lang/String;
    const-string v3, ""

    .local v3, "variant":Ljava/lang/String;
    goto :goto_0

    .line 37
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    aget v4, v0, v2

    if-ne v4, v3, :cond_1

    .line 38
    aget v3, v0, v1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "language":Ljava/lang/String;
    aget v1, v0, v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    .restart local v2    # "country":Ljava/lang/String;
    const-string v1, ""

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    .local v1, "variant":Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v1    # "variant":Ljava/lang/String;
    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    :cond_1
    aget v3, v0, v1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 43
    .restart local v3    # "language":Ljava/lang/String;
    aget v1, v0, v1

    add-int/2addr v1, v2

    aget v4, v0, v2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "country":Ljava/lang/String;
    aget v4, v0, v2

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v5

    .line 46
    .local v1, "language":Ljava/lang/String;
    .restart local v2    # "country":Ljava/lang/String;
    .local v3, "variant":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
