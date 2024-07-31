.class public Lcom/thoughtworks/xstream/converters/time/JapaneseEraConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "JapaneseEraConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 29
    if-eqz p1, :cond_0

    const-class v0, Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/time/JapaneseEraConverter;->fromString(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;

    move-result-object p1

    return-object p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 34
    if-nez p1, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/time/chrono/JapaneseEra;->valueOf(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Cannot parse value as Japanese era"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .local v1, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    const-string v2, "value"

    invoke-virtual {v1, v2, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    throw v1
.end method
