.class public Lcom/thoughtworks/xstream/converters/time/ZoneIdConverter;
.super Ljava/lang/Object;
.source "ZoneIdConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 31
    if-eqz p1, :cond_0

    const-class v0, Ljava/time/ZoneId;

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

    .line 27
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/time/ZoneIdConverter;->fromString(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    return-object p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/time/ZoneId;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 38
    :try_start_0
    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/time/DateTimeException;
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Cannot parse value as zone id"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v1, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/time/DateTimeException;
    .end local v1    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    :catch_1
    move-exception v0

    .line 40
    .local v0, "e":Ljava/time/zone/ZoneRulesException;
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Not a valid zone id"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v0    # "e":Ljava/time/zone/ZoneRulesException;
    .restart local v1    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    nop

    .line 44
    :goto_0
    const-string v0, "value"

    invoke-virtual {v1, v0, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    throw v1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    if-nez p1, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/time/ZoneId;

    .line 54
    .local v0, "zoneId":Ljava/time/ZoneId;
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
