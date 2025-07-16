.class public Lcom/thoughtworks/xstream/converters/time/YearConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "YearConverter.java"


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

    .line 29
    const-class v0, Ljava/time/Year;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/time/YearConverter;->fromString(Ljava/lang/String;)Ljava/time/Year;

    move-result-object p1

    return-object p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/time/Year;
    .locals 3

    .line 35
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Cannot parse value as year"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "value"

    .line 38
    invoke-virtual {v1, v0, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    throw v1
.end method
