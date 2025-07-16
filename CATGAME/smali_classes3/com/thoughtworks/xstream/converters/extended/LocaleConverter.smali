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
    .locals 1

    .line 27
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private underscorePositions(Ljava/lang/String;)[I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    .line 52
    aget v4, v1, v4

    :goto_1
    const/16 v5, 0x5f

    add-int/lit8 v4, v4, 0x1

    .line 53
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 27
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->class$java$util$Locale:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Locale"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->class$java$util$Locale:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 31
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;->underscorePositions(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    aget v2, v0, v1

    const-string v3, ""

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 37
    aget v6, v0, v5

    if-ne v6, v4, :cond_1

    .line 38
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 39
    aget v0, v0, v1

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v3

    move-object v3, p1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 43
    aget v1, v0, v1

    add-int/2addr v1, v5

    aget v3, v0, v5

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 44
    aget v0, v0, v5

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :goto_0
    move-object p1, v2

    .line 46
    :goto_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
